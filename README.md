# Docker-Angular-sample-project

Sample Angular application for the Docker environment.


### Prerequisites

Make sure you have already installed Docker Engine.
You don’t need to install Nginx or NPM, as both are provided by Docker images.

```
$ docker -v
Docker version 18.03.1-ce, build 9ee9f40
```


### Installing

```
git clone https://github.com/jebincvarghese/Docker-Angular-sample-project.git angular

cd angular

docker build -t angular .

docker container run --name website -p 80:80 -d angular

```
Go to [http://localhost](http://localhost)

