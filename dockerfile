FROM debian:11
RUN apt update && apt install -y wget cron && rm -rf /var/lib/apt/lists/*
RUN mkdir -p /scripts
WORKDIR /scripts
RUN wget https://raw.githubusercontent.com/Athlon1600/php-proxy-installer/master/install.sh
RUN chmod +x install.sh
RUN ./install.sh
