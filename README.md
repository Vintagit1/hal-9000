![HAL 9000](https://raw.githubusercontent.com/vinta/HAL-9000/master/assets/HAL_9000.jpg "HAL 9000")

# HAL 9000

[![](https://img.shields.io/badge/made%20with-%e2%9d%a4-ff69b4.svg?style=flat-square)](https://vinta.ws/code/)

Automatically setup a productive development environment with Ansible on macOS.

Dominating your dev environment like cats rule the Internet.

## Includes

- [Docker](https://github.com/vinta/HAL-9000/blob/master/playbooks/roles/docker/tasks/main.yml)
- [Kubernetes](https://github.com/vinta/HAL-9000/blob/master/playbooks/roles/kubernetes/tasks/main.yml)
- [Python](https://github.com/vinta/HAL-9000/blob/master/playbooks/roles/python/tasks/main.yml)
- [Node.js](https://github.com/vinta/HAL-9000/blob/master/playbooks/roles/node/tasks/main.yml)
- [Go](https://github.com/vinta/HAL-9000/blob/master/playbooks/roles/go/tasks/main.yml)
- [Apache Spark](https://github.com/vinta/HAL-9000/blob/master/playbooks/roles/spark/tasks/main.yml)

## Prerequisite

First, you need to manually:

1. Install Command Line Tools via `xcode-select --install`
2. Install [Docker for Mac](https://docs.docker.com/docker-for-mac/install/)

## Bootstrap

```console
$ curl -L https://bit.ly/open-the-pod-bay-doors | bash
```

If you want to install only specific components (see [site.yml](https://github.com/vinta/HAL-9000/blob/master/playbooks/site.yml)):

```console
$ curl -L https://bit.ly/open-the-pod-bay-doors | bash -s -- --tags docker,kubernetes
```

## Usage

```console
# pull the repo and run ansible-playbook
$ hal update
$ hal update --tags docker,kubernetes

# add the file to the dotfiles repository
$ hal link ~/.zshrc

# remove the file from the dotfiles repository
$ hal unlink ~/.zshrc

# force sync dotfiles
$ hal sync

# git clone my repositories
$ hal clone all
$ hal clone work
$ hal clone personal

# open the pod bay doors, please, HAL
$ hal open-the-pod-bay-doors
```
