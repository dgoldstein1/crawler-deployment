#!/bin/sh

# build prom image
cd docker/prometheus
docker build . -t dgoldstein1/crawler-deployment:prometheus
docker push dgoldstein1/crawler-deployment:prometheus

# build gra
