FROM ubuntu:20.04
RUN apt-get update && apt-get install -y wget

RUN wget https://dl.influxdata.com/influxdb/releases/influxdb_client_2.0.0-beta.16_linux_amd64.tar.gz
RUN tar xvfz influxdb_client_2.0.0-beta.16_linux_amd64.tar.gz

RUN cp influxdb_client_2.0.0-beta.16_linux_amd64/influx /usr/bin/

ENTRYPOINT [ "influx" ]
