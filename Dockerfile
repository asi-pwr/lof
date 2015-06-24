FROM rails:latest

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev && rm -rf /var/lib/apt/lists/*

RUN bundle config --global frozen 1

RUN mkdir -p /lof

WORKDIR /tmp

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install

ADD . /lof
WORKDIR /lof
