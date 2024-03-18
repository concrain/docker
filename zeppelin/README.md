Apache Zeppelin is often used as a web-based notebook interface for running interactive data analytics and visualization tasks. It has built-in support for several data sources, including Apache Accumulo.

When using Zeppelin with Accumulo, you can use the Accumulo interpreter, which allows you to run Accumulo shell commands and queries directly from the Zeppelin notebook. The Accumulo interpreter supports a variety of Accumulo commands, such as table, user, auths, and scan, and you can also use it to run custom Accumulo shell scripts.

To use the Accumulo interpreter, you'll need to configure it in your Zeppelin interpreter settings. You'll need to specify the Accumulo instance name, ZooKeeper quorum, username, and password in the interpreter configuration. Once the interpreter is configured, you can create a new Zeppelin notebook and start running Accumulo commands and queries in it.

Zeppelin also has built-in support for several visualization libraries, such as D3.js and Plotly, which you can use to create charts and graphs from your Accumulo data.


We're setting the ZEPPELIN_NOTEBOOK_DIR and ZEPPELIN_CONF_DIR environment variables to specify the location of the Zeppelin notebooks and configuration files, respectively. In this example, we're mapping local directories ./notebooks and ./conf to the corresponding directories inside the container.

ZEPPELIN_NOTEBOOK_DIR is used to specify the directory path where Zeppelin will store its notebooks. By default, Zeppelin stores its notebooks in the /zeppelin/notebook directory inside the Docker container. You can set ZEPPELIN_NOTEBOOK_DIR to a different directory path if you want to store your notebooks outside of the container, or if you're mounting an external volume for the notebooks.

ZEPPELIN_CONF_DIR is used to specify the directory path where Zeppelin will look for its configuration files. By default, Zeppelin looks for its configuration files in the /zeppelin/conf directory inside the Docker container. You can set ZEPPELIN_CONF_DIR to a different directory path if you want to store your configuration files outside of the container, or if you're mounting an external volume for the configuration files.

Both of these environment variables are optional, and if they are not set, Zeppelin will use the default directory paths.

http://localhost:9050
