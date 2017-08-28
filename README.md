# README

This is my docker playground.

# My docker container

This is a very simple rails api app that will have two simple actions:

- `/ping?host=localhost:3000`
- `/pong`

# Setup

1. Find out all your public IP:

```shell
ifconfig en0 | grep 192
```

2. Add it to:

```shell
echo '192.168.1.3 dev' | sudo tee -a /etc/hosts
```

## If you use docker-machine

1. Find out your docker-machine IP:

```shell
docker-machine ip
```

2. Add it to:

```shell
echo '192.168.99.100 dev' | sudo tee -a /etc/hosts
```

# Running

## local

On local env you **need** to bind your app to `0.0.0.0`

```shell
rails s -p 3001 -b 0.0.0.0
```

## docker

```shell
bin/docker-build
bin/docker-run
```

# Testing

```shell
bin/curl-tests
```

## Tested on the following ENVs:

- `Mac`
  - `Docker for Mac`
  - `docker-machine`
