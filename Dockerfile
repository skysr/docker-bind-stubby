FROM debian:buster

COPY sources.list /etc/apt/sources.list

RUN apt-get update && apt-get upgrade
RUN apt-get install --no-install-recommends -y apt
RUN apt update && apt upgrade

RUN apt install --no-install-recommends -y bash
RUN apt install --no-install-recommends -y ca-certificates

RUN apt install --no-install-recommends -y stubby
COPY stubby /bin/stubby
RUN chmod 777 /bin/stubby
COPY stubby.yml /etc/stubby/stubby.yml

RUN apt install --no-install-recommends -y bind9
COPY named.conf.options /etc/bind/named.conf.options

COPY entrypoint.sh /bin/entrypoint.sh
RUN chmod 777 /bin/entrypoint.sh

CMD ["/bin/bash","/bin/entrypoint.sh"]