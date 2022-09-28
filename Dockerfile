FROM ruby

RUN apt-get update && apt-get install -y nodejs npm
RUN npm install -g yarn

RUN mkdir /social_ruby_app

WORKDIR /social_ruby_app