# Configuration

Each service is a mviewer template mustache and a data source
Configure this in  services.json

For each service, you a folder named as service is created inside with templated index.html
You can then modify this template



## Installation

``git clone https://github.com/spelhate/mpublisher``

``cd mpublisher``

``python -m venv venv``

``venv\Scripts\activate`` (windows)

``. venv/bin/activate`` (Linux)

``pip install requests flask jsonpath-python``

## Start service (dev mode)
flask run

## Test
Example : http://localhost:5000/mpublisher/actes/243500741/2022 or http://localhost:5000/mpublisher/synthese/243500741/2022


## URL / variables translation

Url pattern is ``mpublisher/<service>/{1}/{2}/{3}

with this URL ``http://localhost:5000/mpublisher/synthese/243500741/2022`` mpublisher will replace in synthese service definition

``
"synthese": {
        "title": "Megalis - synthèse des usages",
        "data_url":"https://geobretagne.fr/geoserver/megalis/wfs?",
        "url_parameters": {
            "SERVICE": "WFS",
            "VERSION": "2.0.0",
            "REQUEST":"GETFEATURE",
            "TYPENAME":"services_organisme",
            "CQL_FILTER":"annee='{2}' and level='Intercommunalité' and siren_epci='{1}'",
            "outputFormat":"application/json",
            "srsName": "EPSG:4326"
        },
        "template": "https://geobretagne.fr/apps/megalis-services/templates/synthese_user.mst",
        "model": "models/default",
        "jsonpath": "$.features[0].properties"
    }
``
 * {1} with 253500741
 * {2} with 2022





