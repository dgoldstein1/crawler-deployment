#!/bin/sh

# build prom image
cd docker/prometheus
docker build . -t dgoldstein1/crawler-deployment:prometheus
docker push dgoldstein1/crawler-deployment:prometheus

# build gra
cd  ../grafana
docker build . -t dgoldstein1/crawler-deployment:grafana
docker push dgoldstein1/crawler-deployment:grafana

# nginx edge
cd  ../edge
docker build . -t dgoldstein1/crawler-deployment:edge
docker push dgoldstein1/crawler-deployment:edge