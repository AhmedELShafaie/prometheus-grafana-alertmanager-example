#!/bin/sh

install () {
  apt-get update

  apt-get install docker-ce
  docker swarm init

  apt-get install git-all
  git clone https://github.com/PagerTree/prometheus-grafana-alertmanager-example.git
  cd prometheus-grafana-alertmanager-example

  chmod +x ./util/*.sh
  ./util/start.sh
}

install
