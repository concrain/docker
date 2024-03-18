apache nifi

#### Admin Console
http://localhost:8091/nifi/

https://medium.com/geekculture/host-a-fully-persisted-apache-nifi-service-with-docker-ffaa6a5f54a3

#### FIX THE CONFIG ERROR
#### enter the directory to copy the files to the right place
$ cd ./nifi_persistence_test

#### to get the container ID of NiFi's docker container
$ docker ps

#### the result will look like this (shortened to fit this article)
CONTAINER ID   IMAGE                           COMMAND
7554d9c68c8f   apache/nifi:1.14.0              ...
8af04cd37e06   apache/nifi-registry:1.15.0     ...
a2dacb43ed23   bitnami/zookeeper:3.7.0         ...

#### copy the directory from the docker container to the local machine
$ docker cp <container_id>:/opt/nifi/nifi-current/conf ./nifi/
