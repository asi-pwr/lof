FROM ruby:2.3.1-alpine

RUN mkdir /usr/src/app
WORKDIR /usr/src/app
ADD Gemfile /usr/src/app/
ADD Gemfile.lock /usr/src/app/

RUN apk --update add --no-cache --virtual build-dependencies \
    build-base ruby-dev openssl-dev postgresql-dev libc-dev \
    linux-headers libxml2-dev libxslt-dev && \
    bundle install --jobs=4 && \
    apk del build-dependencies

RUN apk --update add postgresql-client nodejs tzdata

ADD . /usr/src/app
