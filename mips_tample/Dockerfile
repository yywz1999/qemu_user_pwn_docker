FROM ubuntu:16.04

RUN sed -i "s/archive.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y lib32z1 socat

RUN useradd -m pwn

WORKDIR /home/pwn

MAINTAINER W22

RUN mkdir /home/pwn/bin && \
    cp /bin/sh /home/pwn/bin && \
    cp /bin/ls /home/pwn/bin && \
    cp /bin/cat /home/pwn/bin

RUN mkdir /home/pwn/dev && \
    mknod /home/pwn/dev/null c 1 3 && \
    mknod /home/pwn/dev/zero c 1 5 && \
    mknod /home/pwn/dev/random c 1 8 && \
    mknod /home/pwn/dev/urandom c 1 9 && \
    chmod 666 /home/pwn/dev/*

COPY ./start.sh /start.sh

RUN chmod +x /start.sh

COPY ./challenge/ /home/pwn/
RUN chown -R root:pwn /home/pwn && \
    chmod -R 750 /home/pwn && \
    chmod 740 /home/pwn/flag

CMD ["/start.sh"]

EXPOSE 9999

