# WebProtege Ontology Development Environment

NDS Labs Docker image for the [WebProtege](http://protegewiki.stanford.edu/wiki/WebProtege) ontology development environment.

## Prerequisites
* Docker

## Build
To build the image from the Dockerfile:
```bash
docker build -t ndslabs/webprotege .
```

## Run the image
To run the Docker image:
```bash
docker run -it -p 8080:8080 ndslabs/webprotege
```

The image will be pulled from [DockerHub](https://hub.docker.com/) if it does not already exist on your local machine.

## See also
* https://github.com/nds-org/ndslabs
* https://github.com/nds-org/ndslabs-specs
