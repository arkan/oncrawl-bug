FROM python:3.10-alpine

RUN apk add --no-cache bash ncftp wget coreutils && \
    wget -nv https://dl.min.io/client/mc/release/linux-amd64/archive/mc.RELEASE.2022-06-11T21-10-36Z -O /bin/mc && \
    chmod +x /bin/mc

WORKDIR /app

COPY . /app

ENTRYPOINT ["./docker-entrypoint.sh"]
