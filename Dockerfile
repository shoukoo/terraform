FROM debian:stretch-slim

RUN apt-get update &&\
    apt-get install -y curl unzip

RUN curl -sfL https://releases.hashicorp.com/terraform/0.12.5/terraform_0.12.5_linux_amd64.zip > terraform.zip
RUN unzip terraform.zip &&  mv terraform /usr/bin/
RUN mkdir -p /root/app/

