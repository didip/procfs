FROM ubuntu:14.04

RUN apt-get update && apt-get install --no-install-recommends -y \
    build-essential \
    vim \
    curl \
    wget \
    mercurial \
    git-core \
    gettext

RUN curl -k https://storage.googleapis.com/golang/go1.3.1.linux-amd64.tar.gz | tar -v -C /usr/local -xz

ENV GOPATH /go
ENV GOROOT /usr/local/go
ENV PATH $PATH:/usr/local/go/bin:/go/bin

ADD . /go/src/github.com/didip/procfs
