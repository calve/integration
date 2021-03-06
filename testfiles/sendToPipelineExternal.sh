#!/usr/bin/env bash

PARAM_FILE=$PWD/datapackage.jsonld
PARAM_LP_DOMAIN=http://eis-openbudgets.iais.fraunhofer.de

#curl -i -X POST -H "Content-Type: multipart/form-data" -F "input=@$PWD/datapackage.jsonld" "http://localhost:8181/resources/executions?pipeline=http://localhost:8181/resources/pipelines/created-1473847447070"
curl -i -X POST -H "Content-Type: multipart/form-data" -F "input=@$PARAM_FILE" "http://eis-openbudgets.iais.fraunhofer.de/linkedpipes/execute/fdp2rdf"
#curl -i -X POST -H "Content-Type: multipart/form-data" -F "input=@$PWD/datapackage.jsonld" "http://localhost:8080/resources/executions?pipeline=http://localhost:8080/resources/pipelines/created-1469178804520"
# curl -i -X POST -H "Content-Type: multipart/form-data" -F "input=@$PWD/datapackage.jsonld.bkp" "http://eis-openbudgets.iais.fraunhofer.de/linkedpipes/execute/fdp2rdf"