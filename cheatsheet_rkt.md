####Summary
rkt is a docker competitor. Including here because it runs on a chromebook with crouton.

####Installation

See for latest version: https://github.com/coreos/rkt/releases
```
RKT_VERSION="1.14.0"
wget https://github.com/coreos/rkt/releases/download/v1.14.0/rkt-v$RKT_VERSION.tar.gz
tar xfv rkt-v$RKT_VERSION.tar.gz 
alias rkt="sudo '${PWD}/rkt-v$RKT_VERSION/rkt'"
```
####Examples

* [Installation and first container](https://coreos.com/blog/getting-started-with-rkt-1.0.html)
* [Running a redis docker image](https://coreos.com/rkt/docs/latest/running-docker-images.html)
* [Build an image from a go app](https://coreos.com/rkt/docs/latest/getting-started-guide.html)
