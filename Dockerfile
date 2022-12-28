FROM ubuntu:latest

RUN apt-get update && apt-get install -y --no-install-recommends init systemd \
    && apt-get clean && rm -rf /var/lib/apt/lists/

ENTRYPOINT [ "/sbin/init" ]