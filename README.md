# Docker setup of brat annotator and OpenNLP framework
[OpenNLP framework](https://opennlp.apache.org/) contains the connector to the [brat annotator](http://brat.nlplab.org/).
This [docker-compose](https://docs.docker.com/compose/) recipe connects the two and enables a quick setup of an OpenNLP+brat
annotation environment.

# Setup
OpenNLP and brat run in different containers, linked by `docker-compose`. The brat container listens internally on port 8001,
but externally it is exposed on the port 80. Therefore, after executing

```bash
docker-compose up
```

in the project directory, you might simply point your browser to the server, where Docker is running, and start annotating.

# Configuration
The credentials to brat environment can be seen at the head of the [brat Dockerfile](brat/Dockerfile). OpenNLP is configured
as the automatic annotator in the file `tools.conf`. Other settings remained unchanged. Should you wish to change settings,
you can extract the configuration files from the brat installation archive, edit them and then `COPY` them in the `Dockerfile`.

# License
opennlp-brat-docker is released under [Apache License 2.0](LICENSE).
