FROM ubuntu:20.04

#INSTALL DEPENDENCIES
RUN apt-get update && \
    apt-get install -y \
    curl \
    unzip \
    python3 \
    git \
    python3-pip

#Install Terraform
RUN curl -Lo /tmp/terraform.zip https://releases.hashicorp.com/terraform/1.0.0/terraform_1.0.0_linux_amd64.zip && \
    unzip /tmp/terraform.zip -d /usr/local/bin/ && \
    rm /tmp/terraform.zip


#Install AWS CLI
RUN pip3 install awscli

#Verify Istall
RUN terraform --version && aws --version && git --version
