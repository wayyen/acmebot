FROM ubuntu:18.04

RUN apt-get update && \ 
    apt-get install -y curl cron openssh-client vim 
RUN curl https://get.acme.sh | sh
RUN mkdir /root/bin
RUN ln -s /root/.acme.sh/acme.sh /root/bin/acme.sh
ENV PATH="/root/bin:${PATH}"

VOLUME ["/certs"]

WORKDIR /certs
ENTRYPOINT [ "/bin/bash" ]