
GF_SERVER_ROOT_URL=http://grafana:3000
This sets the root URL for the Grafana server to http://grafana:3000, which assumes that the Grafana container is running with the name grafana and that the container is listening on port 3000. You may need to adjust this URL depending on your specific setup.

http://prometheus:9090
If the Prometheus container is running on a different network or host, you will need to specify the appropriate URL.



####You can export data from Prometheus to Grafana by configuring Prometheus as a data source in Grafana.
To do so, you need to add a new data source in Grafana with the following steps:

Log in to Grafana.

In the left sidebar, click on the "Configuration" icon and select "Data Sources."

Click on the "Add data source" button.

Select "Prometheus" as the type of data source.

In the "HTTP" section, enter the URL of the Prometheus server, which in this case is "http://localhost:9000".

In the "Scrape Interval" section, set the scrape interval to the same value as the scrape interval in your Prometheus configuration.

Click on "Save & Test" to verify that the connection to Prometheus is working.

####After you have configured Prometheus as a data source in Grafana, you can create dashboards and panels that display data from Prometheus. To create a new panel, follow these steps...

Click on the "Create" button in the left sidebar and select "Dashboard."

Click on the "Add Query" button to add a new panel.

From the data source dropdown, select "Prometheus."

In the "Query" field, enter a Prometheus query that retrieves the metric you want to display in Grafana.

Customize the panel by adding additional queries or configuring visual options.

Save the panel and repeat the process to create additional panels.

When you select "Prometheus" as the data source, you will be able to choose from a list of metrics that are available in Prometheus.
