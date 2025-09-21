
FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    bash \
    dos2unix \
    cowsay \
    fortune-mod \
    netcat \
 && rm -rf /var/lib/apt/lists/*

ENV PATH="/usr/games:${PATH}"

WORKDIR /app

COPY wisecow.sh .

RUN dos2unix wisecow.sh && chmod +x wisecow.sh

CMD ["./wisecow.sh"]

