# crawler-deployment

Docker and Kubernetes deployment configuration for distributed web crawlers indexing to [big-data graph DB](https://github.com/dgoldstein1/graphApi).

[![CircleCI](https://circleci.com/gh/dgoldstein1/crawler.svg?style=svg)](https://circleci.com/gh/dgoldstein1/crawler)

![dashbaord](pictures/grafana.png)

## Run Locally

Indexes around 100k nodes and exit.

### Kubernetes

- install kompose

```sh
# start local minikube
minikube start -p crawler-deployment
...
cd k8
rm -rf ./*.yaml
kompose -f docker-compose.yaml.k8-config convert
# start local cluster
kubectrl apply -f .
...
# see that all pods are working
kubectrl get pods --watch
...
# once all pods are up, look at the dashboard
# The username / password are "admin" / "admin".
minikube service grafana
# see that nodes have been added to the graph service
minikube -p crawler-deployment service edge
```

### GCE

```
gcloud container clusters get-credentials crawler-backend --region us-east1-b
kubectl apply -f k8
```

## Authors

* **David Goldstein** - [DavidCharlesGoldstein.com](http://www.davidcharlesgoldstein.com/?crawler-deployment) - [Decipher Technology Studios](http://deciphernow.com/)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
