FROM python:2.7.12-alpine

MAINTAINER uyorum <uyorum.pub@gmail.com>

RUN apk update && \
      apk add tcpdump libdnet-dev libpcap-dev gcc musl-dev && \
      pip install scapy pypcap pydumbnet && \
      apk del gcc musl-dev && \
      rm -rf /var/cache/apk/*

COPY dash-finder.py /dash-finder.py
