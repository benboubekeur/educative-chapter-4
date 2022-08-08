FROM ubuntu:20.04

RUN apt update &&\
	apt install -y curl git &&\
	curl -sL https://deb.nodesource.com/setup_16.x -o nodesource_setup.sh &&\
	bash nodesource_setup.sh &&\
	apt install -y nodejs

RUN	git clone https://github.com/benboubekeur/educative-chapter-4.git &&\
	cd educative-chapter-4 && npm install
