# crawler-deployment

Docker and Kubernetes deployment configuration for distributed web crawlers indexing to [big-data graph DB](https://github.com/dgoldstein1/graphApi).

[![CircleCI](https://circleci.com/gh/dgoldstein1/crawler.svg?style=svg)](https://circleci.com/gh/dgoldstein1/crawler)

## Run Locally

Index 200k-300k nodes and exit.

### Minishift

TODO

### Docker

```sh
docker-compose up -d
```
Go to http://localhost:3000 to access grafana. The username / password are "admin" / "admin". Go to the dashboard called "Crawler Backend Overview" and select "last 5 minutes as the timeframe. You should see a dashbaord looking something like:

![dashbaord](pictures/grafana.png)


## Authors

* **David Goldstein** - [DavidCharlesGoldstein.com](http://www.davidcharlesgoldstein.com/?crawler-deployment) - [Decipher Technology Studios](http://deciphernow.com/)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
