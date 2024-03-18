ELK is a popular stack for log management and analysis. It is composed of three open-source tools: Elasticsearch (a distributed search and analytics engine), Logstash (a data processing pipeline), and Kibana (a visualization layer). ELK is often used to analyze and visualize structured and unstructured data, including logs, metrics, and other types of data. Logstash is used to collect, parse, and transform logs from various sources, and then send them to Elasticsearch for storage and analysis. Kibana is used to visualize and interact with the data stored in Elasticsearch.


elasticsearch, logstash, and kibana.

The elasticsearch service runs the Elasticsearch container, with its data directory mounted to the ./elasticsearch directory on the host machine. It also exposes the Elasticsearch API ports (9200 and 9300) to the host machine.

The logstash service runs the Logstash container, with its pipeline configuration directory mounted to the ./logstash/config directory on the host machine. It also sets the ELASTICSEARCH_HOSTS environment variable to point to the Elasticsearch container, and exposes the Logstash TCP input port (5044) to the host machine.

The kibana service runs the Kibana container, and sets the ELASTICSEARCH_HOSTS environment variable to point to the Elasticsearch container. It also exposes the Kibana web interface port (5601) to the host machine.

All three services are connected to the 'elk-network', which allows them to communicate with each other using their service names as hostnames
(e.g. elasticsearch, logstash, and kibana).
