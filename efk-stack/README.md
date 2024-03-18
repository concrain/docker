EFK is similar to ELK, but replaces Logstash with Fluentd, a lightweight and flexible data collector. Fluentd is designed to handle a variety of data sources, including logs, metrics, and events, and can output data to a variety of destinations, including Elasticsearch. EFK is often used for log management and analysis in Kubernetes environments, as Fluentd has native integration with Kubernetes.

elasticsearch, fluend, and kibana.

An Elasticsearch container, which is exposed on port 9200.
A Fluentd container, which reads logs from the host machine's /var/log directory and forwards them to Elasticsearch. It is exposed on port 24224.
A Kibana container, which provides a web-based UI for visualizing and analyzing data stored in Elasticsearch. It is exposed on port 5601.
