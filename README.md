# Description
MPUBLISHER est un service web qui permet de publier une ou plusieurs fiches d'info MVIEWER basée sur des templates Mustache dans un format directement accessible.
Le service publie des ressources en REST sous la forme :
https://monsite.com/mpublisher/monservice/critere_1/critere_2/critere_3

* **monservice** fait référence à la configuration associée dans le fichier **services.json**
* Le critère 1 est l'identifiant qui permet de filtrer la donnée source (Exemple code INSEE de la commune)
* Les critères 2 et 3 sont optionnels. Exemple Année...



# Prérequis
Pour pouvoir publier une fiche d'info existante, la source de donnée d'origine doit être au format json, doit pouvoir être filtrée à partir d'un identifiant et s'appuyer sur un template de type Mustache pour le rendu html. Dans mviewer la sélection d'une entité s'opère par un clic de sélection sur la carte.

![image](https://user-images.githubusercontent.com/1793792/160416007-ac66bb6a-621a-4686-9d0b-9975571faac8.png)

 Dans MPUBLISHER, le clic de sélection est remplacé par un filtre basé sur l'identifiant.
 
 ![image](https://user-images.githubusercontent.com/1793792/160416878-255ec0bb-9a14-45b7-9838-7667676f9476.png)


# Configuration

### Chaque service est configuré dans le fichier services.json

exemple avec le service **synthese**

```
"synthese": {
        "title": "Titre du service",
        "data_url":"url_qui_retourne_du_json",
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
```

### 5 paramètres obligatoires et un paramètre optionnel permettent de définir un service :
* ``title`` : [R] Titre du service
* ``data_url`` : [R] URL de la source de donnée (format JSON)
* ``jsonpath`` [R] : Expression jsonPath permettant de parser les données JSON. JSONPath est une méthode normalisée d'interrogation des éléments d'un objet JSON. 
* ``url_parameters`` [O] : Dictionnaire de paramètres au format ``"PARAMETRE": "Value"``associé à data_url
* ``template`` [R] : URL du template Mustache source 
* ``model`` [R] : chemin vers le modèle html qui contient le document html root dans lequel s'intègrera le template Mustache. Ce modèle peut contenir un style, une structure et les ressources (lib javascripts) permettant au rendu html de fonctionner correctement. 

# Initialisation

* A l'initialisation d'un service (Première exécution), un répertoire du nom du service est crée dans templates.
* Le template Mustache source est copié dans ce dossier ainsi que le modèle HTML root. Si besoin, il est possible de modifier localement ces deux fichiers.
* Pour revenir à l'état initial, il suffit de supprimer e dossier service

For each service, you a folder named as service is created inside with templated index.html
You can then modify this template

## URL et substitution de variables

Le pattern d' URL est le suivant :  ``mpublisher/{0}/{1}/{2}/{3}``

A partir de l'URL suivante :  ``http://localhost:5000/mpublisher/synthese/243500741/2022`` mpublisher va remplacer chaque référence de variable avec la valeur héritée de l'URL.

```
"synthese": {
        "title": "Megalis - synthèse des usages",
        "data_url":"https://geobretagne.fr/geoserver/{3}/wfs?",
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
```
Dans cet exemple, mpublisher va remplacer
 * {0} par le nom du service 'synthese'
 * {1} par l'identifiant : '253500741'
 * {2} par l'année : '2022'
 * {3} par le fournisseur : 'megalis'


# Installation

## Prérequis
* Python >= 3.6

## Commandes
```
git clone https://github.com/spelhate/mpublisher
cd mpublisher
python -m venv venv
venv\Scripts\activate`` (windows)
. venv/bin/activate`` (Linux)
pip install requests flask jsonpath-python
```

## Start service (dev mode)
flask run

## Test
Example : http://localhost:5000/mpublisher/actes/243500741/2022 or http://localhost:5000/mpublisher/synthese/243500741/2022







