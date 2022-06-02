FROM ruby:2.7.2
LABEL maintainer "João Mateus Scarpa <joao.scarpa@designa.com.br>"

ENV TZ=Etc/UTC

RUN gem install rails --version=6.1.5.1

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - 
RUN apt-get install -y nodejs
RUN npm install -g yarn
RUN gem update --system && gem install bundler

WORKDIR /project

EXPOSE 3000

SHELL ["/bin/bash", "-c"] 