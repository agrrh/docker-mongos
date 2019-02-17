FROM ubuntu:18.04

RUN DEBIAN_FRONTEND=noninteractive apt-get update -y

RUN wget https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-r4.0.6.tgz && \
    tar -zxvf mongodb-linux-x86_64-*.tgz && \
    cp mongodb-linux-x86_64-*/bin/mongos /usr/bin && \
    rm -rf mongodb-linux-x86_64-*

COPY entrypoint.sh /entrypoint.sh

EXPOSE 27017
CMD ["/entrypoint.sh"]
