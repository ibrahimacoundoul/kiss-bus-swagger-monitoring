#!/bin/sh
#icoundoul,10/12/2014


cd /var/lib/jenkins/jobs/kiss-bus-swagger-monitoring

chmod 777 -R src/main/resources/*.json

cp /var/lib/jenkins/jobs/kiss-bus-swagger-monitoring-build/workspace/target/kiss-swagger-monitoring-dep.jar .

git pull origin master

java -cp kiss-swagger-monitoring-dep.jar fr.canalplus.cgaweb.swagger.kissSwaggerDiff.KissWSApiDocsMonitoring # regeneration des fichiers json


#git pull origin master

git add *

git commit -am "commit auto des modifications des webservices KISS avec Swagger (shell)"

git push --repo https://ibrahimacoundoul:testtest1@github.com/ibrahimacoundoul/kiss-bus-swagger-monitoring.git
# git push --repo https://git@github.com/ibrahimacoundoul/cgaweb-ico-dev.git
