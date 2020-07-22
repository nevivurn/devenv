FROM debian:buster-slim
WORKDIR /code

RUN set -ex \
	&& apt-get update \
	&& apt-get install -y ansible unzip \
	&& rm -rf /var/lib/apt/lists/*

COPY *.yaml ./
COPY roles/ roles/
RUN ansible-playbook -v main.yaml

WORKDIR /root
