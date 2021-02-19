Run this to build the NGINX server image to serve static content
```sh
docker build -t nginx-server -f Dockerfile.nginx .
```

Run this to serve static content with the host volume mounted
```sh
docker run -it -p 3001:80 -v ${PWD}:/www/data nginx-server
```

>NB: Changes made to the index.html file on the host reflects in the container. You can reload the browser to see this changes on the host port 3001

---

Run this to build the APACHE server image to serve static content
```sh
docker build -t apache-server -f Dockerfile.apache .
```

Run this to serve static content with the host volume mounted
```sh
docker run -it -p 3003:80 -v ${PWD}:/www/data apache-server
```

>NB: Changes made to the index.html file on the host reflects in the container. You can reload the browser to see this changes on the host port 3003

---

Change directory to node-postgres-docker-compose-starter dir
```sh
cd node-postgres-docker-compose-starter
```
Run the docker-compose command to bootstrap the server
```sh
docker-compose up --build
```

This will start the server and postgres DB

>NB: You can visit the test route on localhost:3005/test_db


Command to push to DockerHub

```sh
docker tag <image> <user ID>/<image>
```

```sh
docker push <user ID>/<image>
```

Links to the DockerHub Images

[link1](https://hub.docker.com/repository/docker/mercyose/nginx-server)
[link2](https://hub.docker.com/repository/docker/mercyose/apache-server)
[link3](https://hub.docker.com/repository/docker/mercyose/nodejs-webapp)
[link4](https://hub.docker.com/repository/docker/mercyose/node-postgres-docker-compose-starter_web)

Command to push to GCR

```sh
docker tag <image-name> <registry name>/[PROJECT ID]/<image-name>
```

```sh
docker push <registry name>/[PROJECT ID]/<image-name>
```
>NB: This works after installing and initializing Google Cloud SDK

Link to the GCR

[link5](https://console.cloud.google.com/gcr/images/durable-timing-305313?project=durable-timing-305313)
