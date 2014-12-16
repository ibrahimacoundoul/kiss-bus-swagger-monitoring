#!/bin/sh
#icoundoul,10/12/2014



#Jump to project customer directeory
cd /soft/kiss-bus-swagger-monitoring 

#Setting the rigth permissions to the json files
chmod 777 -R src/main/resources/*.json

#Getting the jar file for the main class that generates the json files
cp /var/lib/jenkins/jobs/kiss-bus-swagger-monitoring-build/workspace/target/kiss-swagger-monitoring-dep.jar .

#Upding the current repos
git pull origin master

# generat the files 
java -cp kiss-swagger-monitoring-dep.jar fr.canalplus.cgaweb.swagger.kissSwaggerDiff.KissWSApiDocsMonitoring


#git pull origin master

git add *

git commit -am "commit auto des modifications des webservices KISS avec Swagger (shell)"

git push --repo https://ibrahimacoundoul:testtest1@github.com/ibrahimacoundoul/kiss-bus-swagger-monitoring.git
# git push --repo https://git@github.com/ibrahimacoundoul/cgaweb-ico-dev.git
