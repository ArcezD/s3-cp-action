FROM python:3.8-alpine

LABEL "com.github.actions.name"="S3 CP"
LABEL "com.github.actions.description"="Copy files to an AWS S3 bucket"
LABEL "com.github.actions.icon"="refresh-cw"
LABEL "com.github.actions.color"="green"

LABEL version="0.0.1"
LABEL repository="https://github.com/arcezd/s3-cp-action"
LABEL homepage="https://github.com/arcezd/s3-cp-action/"
LABEL maintainer="Diego Arce <diego@arce.cr>"

# https://github.com/aws/aws-cli/blob/master/CHANGELOG.rst
ENV AWSCLI_VERSION='1.17.9'

RUN pip install --quiet --no-cache-dir awscli==${AWSCLI_VERSION}

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
