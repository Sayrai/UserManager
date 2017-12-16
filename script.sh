#pull the latest node image from docker repo
docker pull node 
#pull the latest mongo image from docker repo
docker pull mongo
#create a container out of the mongo image 
docker run --name alcdevopsdb -p 27017:27017 mongo &  
#build an image from the dockerfile in the project
docker build -t sarah/alcdevops .
#create a container out of the docker image created.
docker run --name alcdevopsapp -p 3000:3000 sarah/alcdevops
#then run bash script.sh on docker terminal.
