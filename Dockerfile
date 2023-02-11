FROM ubuntu:latest
ARG TAGS
WORKDIR /usr/src/app
ARG DEBIAN_FRONTEND=noninteractive

# install common deps
RUN apt update && apt install -y software-properties-common curl git build-essential

# install python
RUN apt-get update && apt-get install -y python3 python3-distutils python3-pip python3-apt

COPY . /usr/src/app

RUN echo "$TAGS"

CMD ["sh", "/usr/src/app/bin/setup-machine.sh", "$TAGS"]