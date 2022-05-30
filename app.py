import requests,urllib,json, re, shutil, os
from flask import Flask, render_template
from jsonpath import JSONPath


app = Flask(__name__)

#Define all services
#See https://pypi.org/project/jsonpath-python/


def init_service(service_name, service):
    #create folder from model defined in service
    source_dir = service["model"]
    destination_dir = "templates/{}".format(service_name)
    shutil.copytree(source_dir, destination_dir)
    #Get original template Mustache
    try:
        request = requests.get(service["template"])
    except requests.ConnectionError:
        return "Connection Error"

    if (request.status_code != 200):
        return "Oops le template Mustache n'est pas disponible", 404
    #mst_content = re.findall(r"(?<={{#features}})(.*\n?)(?={{\/features}})",request.text ,re.S)
    mst_content = request.text
    for v in ['{{#features}}', '{{/features}}']:
      mst_content = mst_content.replace(v, "")


    #write template_locally

    #mst = open(service["template"], "r", encoding='utf-8')
    #mst_content = re.findall(r"(?<={{#features}})(.*\n?)(?={{\/features}})",mst.read() ,re.S)
    #Save template locally
    tpl = open("templates/{}/template.tpl".format(service_name), "w", encoding="utf-8")
    #tpl.write(mst_content[0])
    tpl.write(mst_content)
    tpl.close()
    print("Service : {} enabled".format(service_name))


def init():
    with open('services.json', 'r', encoding="utf-8") as services_file:
      app.config["services"] = json.load(services_file)

    directory_path = os.getcwd()
    print("My current directory is : " + directory_path)
    #Get Original Mustache templates from mviewer and get extract content inside features tags
    for name, service in app.config["services"].items():
        #check if folder exists
        path = 'templates/{}'.format(name)
        if os.path.exists(path) == False:
            print("New service : " + name)
            init_service(name, service)
        else:
            print("Service : " + name + " already exists")

@app.route('/mpublisher/index/')
def show_index():
    services_lst = app.config["services"].items()
    wfs_url = "https://geobretagne.fr/geoserver/megalis/wfs?"
    url_parameters = {
        "SERVICE": "WFS",
        "VERSION": "2.0.0",
        "REQUEST":"GETFEATURE",
        "TYPENAME":"services_organisme",
        "PROPERTYNAME": "organisme,siren",
        "CQL_FILTER":"annee='2022'",
        "outputFormat":"application/json"
    }
    data_url = wfs_url + "{}".format(urllib.parse.urlencode(url_parameters))
    oResponse = requests.get(data_url)
    features_lst = json.loads(oResponse.text)

    annees = ['2021', '2022']


    return render_template('index/index.html', services=services_lst, organismes=features_lst['features'], annees=annees)


@app.route('/mpublisher/<service_name>/<f1>')
@app.route('/mpublisher/<service_name>/<f1>/<f2>')
@app.route('/mpublisher/<service_name>/<f1>/<f2>/<f3>')
def show_adherent_stats(service_name, f1=None, f2=None, f3=None):
    api_values = [service_name, f1, f2, f3]
    print(api_values)
    services = app.config["services"]
    def applyFilter(match):
        i =  re.findall(r'(?<={)[1-3](?=})', match.group(0))[0]
        return api_values[int(i)]

    if (service_name in services):
        service = dict(services[service_name])
        title = service["title"]
        args = dict(service["url_parameters"])
        url = service["data_url"]
        json_path = services[service_name]["jsonpath"]
        url = re.sub(r'{[1-3]}', applyFilter, url)
        print(url)
        #Apply filters to data source (substitute all {[1-3]} by corresponding URL values)
        for param, value in args.items():
          args[param] = re.sub(r'{[1-3]}', applyFilter, value)
          print(args[param])


        data_url = url + "{}".format(urllib.parse.urlencode(args))




        try:
          uResponse = requests.get(data_url)
        except requests.ConnectionError:
          return "Connection Error"

        if (uResponse.status_code != 200):
            return "Oops la donnée source n'est pas disponible :" + data_url, 404
        Jresponse = uResponse.text
        try:
          data = json.loads(Jresponse)
        except ValueError as e:
            return "Data source JSON error : " + str(e), 404

        try:
            f = JSONPath(json_path).parse(data)
        except:
            return "Data source JSONPATH error", 404

        if (len(f) > 0):
            print (str(len(f)) + " feature(s) matched")
            feature = f[0]
            return render_template('{}/index.html'.format(service_name), service=service_name, title=title, tpl='{}/template.tpl'.format(service_name), **feature)
        else:
            return  "Oops, cet identifiant n'existe pas.", 404


    else:
        return "Oops, ce service n'existe pas.", 404

init()
