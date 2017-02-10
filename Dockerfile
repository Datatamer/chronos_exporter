FROM ubuntu:14.04
MAINTAINER Nicholas Laferriere dev@tamr.com

ADD bin/chronos_exporter /chronos_exporter
ENTRYPOINT ["/chronos_exporter"]

EXPOSE 9044
