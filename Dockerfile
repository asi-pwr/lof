FROM ruby:2.3.1-alpine

RUN mkdir /usr/src/app
WORKDIR /usr/src/app
ADD Gemfile /usr/src/app/
ADD Gemfile.lock /usr/src/app/

RUN apk --update add --virtual build_deps \
    build-base ruby-dev libc-dev linux-headers \
    openssl-dev postgresql-dev libxml2-dev libxslt-dev && \
    bundle install --jobs=4 && \
    apk del build_deps

ADD . /usr/src/app
