https://hub.docker.com/_/zookeeper/

https://hub.docker.com/r/bitnami/zookeeper-exporter
you need to create a network before starting the container
$ docker network create zookeeper-exporter-network --driver bridge

get metrics of first exporter (second and third exporters are on 9142 and 9143 ports)
$ curl -s localhost:9141/metrics
$ curl -s localhost:9142/metrics
$ curl -s localhost:9143/metrics

port 9184 there's exporter which handles multiple zk hosts
$ curl -s localhost:9184/metrics

CLI 
$ docker-compose exec zookeeper-cli zkCli.sh --server zoo1:2181,zoo2:2181,zoo3:2181
