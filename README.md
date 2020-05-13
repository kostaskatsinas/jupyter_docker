# jupyter_docker

Run a jupyter lab inside a docker container


## Commands

#### Build the image: 
docker build -t local_jupyter .

 
#### Run docker container in windows powershell (detached/ runs in the background):
docker run -v ${PWD}\docs:/src -p 8890:8888 -d --rm --name=jupyter local_jupyter


#### Run docker container in terminal (detached/ runs in the background):
docker run -v "%cd%\docs":/src -p 8890:8888 -d --rm --name=jupyter local_jupyter


#### Open in chrome:
http://localhost:8890/

