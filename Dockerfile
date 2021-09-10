FROM ruby:2.5.1

RUN apt-get update -qq &&\
  apt-get install -y build-essential \
  nodejs\
  mysql-server\
  mysql-client

WORKDIR /awstest

COPY Gemfile /awstest/Gemfile
COPY Gemfile.lock /awstest/Gemfile.lock

RUN gem install bundler
RUN bundle install

RUN mkdir -p tmp/sockets