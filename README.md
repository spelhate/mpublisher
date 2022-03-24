# Configuration

Each service is a mviewer template mustache and a data source
Configure this in  services.json

For each service, you a folder named as service is created inside with templated index.html
You can then modify this template

Then launch in your navigator /mamedservice/identifiant
Example : http://localhost:5000/actes/243500741 or http://localhost:5000/synthese/243500741


## Installation

``git clone https://github.com/spelhate/mpublisher``
``cd mpublisher``
``python -m venv venv``

``venv\Scripts\activate`` (windows)

``./ venv/bin/activate`` (Linux)

``pip install requests flask jsonpath-python``

## Start service (dev mode)
flask run

## Test
Example : http://localhost:5000/actes/243500741 or http://localhost:5000/synthese/243500741



