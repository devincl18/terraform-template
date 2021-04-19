FROM ubuntu:16.04

# Enviroments
ENV HOME /home
ENV DEBIAN_FRONTEND noninteractive

# Update package repository
RUN apt-get update -y

# Add necessary software
RUN apt-get install -y software-properties-common lsb-release apt-utils wget vim unzip

# Install terrafrom
RUN export DEBIAN_FRONTEND=${DEBIAN_FRONTEND} && \
    wget https://releases.hashicorp.com/terraform/0.14.8/terraform_0.14.8_linux_amd64.zip && \
    unzip ./terraform_0.14.8_linux_amd64.zip -d /usr/local/bin/

WORKDIR ${HOME}
CMD [ "/bin/bash" ]
