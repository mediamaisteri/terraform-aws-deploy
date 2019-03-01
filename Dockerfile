FROM docker:git

RUN apk add bash python py-pip

RUN pip install awscli

RUN wget https://releases.hashicorp.com/terraform/0.11.11/terraform_0.11.11_linux_amd64.zip && \
  unzip terraform_0.11.11_linux_amd64.zip && \
  cp terraform /usr/bin/
