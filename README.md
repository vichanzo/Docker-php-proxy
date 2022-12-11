# Docker-php-proxy
Build php-proxy with a dockerfile

Based on https://github.com/Athlon1600/php-proxy-installer and https://github.com/Athlon1600/php-proxy

create the dockerfile
```
mkdir my-php-proxy && cd my-php-proxy
touch dockerfile
nano dockerfile
```

Contents of dockerfile
```dockerfile
FROM debian:11
RUN apt update && apt install -y wget cron && rm -rf /var/lib/apt/lists/*
RUN mkdir -p /scripts
WORKDIR /scripts
RUN wget https://raw.githubusercontent.com/Athlon1600/php-proxy-installer/master/install.sh
RUN chmod +x install.sh
RUN ./install.sh
```

```bash
docker build -t my-php-proxy .
```

```bash
docker run -d --name php-proxy-container -p 8080:80 my-php-proxy
```


Run bash from this new container.
```bash
docker container exec -it my-php-proxy /bin/bash
```



Dockerfile uses Debian 11 as base.   Download and install scriptfile for php-proxy.  Create  docker image.  Run docker file.  Enter the docker container and run a shell from it.
