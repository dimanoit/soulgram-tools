# Tools

#### This repo contains all services to setup Soulgram dependencies(redis, ms-sql, rabbit-mq, elasticsearch, kibana)

## Installation

In order to start all services open CMD and write command

```sh
docker-compose up
```

## In case of errors

1. Elasticsearch memory limit on Docker, execute command

```sh
wsl -d docker-desktop
sysctl -w vm.max_map_count=262144
```
