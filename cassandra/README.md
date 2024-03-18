from cassandra.cluster import Cluster

cluster = Cluster(['localhost'])
session = cluster.connect()

session.execute("CREATE KEYSPACE mykeyspace WITH REPLICATION = {'class' : 'SimpleStrategy', 'replication_factor' : 1};")
session.execute("USE mykeyspace;")
session.execute("CREATE TABLE mytable (id int PRIMARY KEY, name text);")
session.execute("INSERT INTO mytable (id, name) VALUES (1, 'John Doe');")

rows = session.execute("SELECT * FROM mytable;")
for row in rows:
    print(row.id, row.name)

session.execute("DROP TABLE mytable;")
session.execute("DROP KEYSPACE mykeyspace;")

cluster.shutdown()



DataStax DevCenter: This is a free, standalone desktop application that provides a graphical user interface for developing and testing Cassandra applications. It includes features such as CQL query editor, schema explorer, and data viewer.

Apache Cassandra Query Language (CQL) Shell: This is a command-line tool that allows you to interact with Cassandra using CQL. It's included with the Cassandra distribution and provides a basic interface for executing queries and viewing data.

Cassandra Web Console: This is an open-source web-based UI that provides a dashboard for monitoring and managing Cassandra clusters. It includes features such as cluster health monitoring, keyspaces and table management, and query execution.

OpsCenter: This is a web-based management and monitoring tool for Cassandra that is provided by DataStax. It includes features such as cluster management, performance monitoring, and backup and restore.
