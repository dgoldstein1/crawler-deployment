#!/bin/sh
export $(cat VERSION | grep VERSION)
# build prom image
cd docker/prometheus
docker build . -t dgoldstein1/crawler-deployment:prometheus-$VERSION
docker push dgoldstein1/crawler-deployment:prometheus-$VERSION

# build gra
cd  ../grafana
docker build . -t dgoldstein1/crawler-deployment:grafana-$VERSION
docker push dgoldstein1/crawler-deployment:grafana-$VERSION
