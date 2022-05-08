FROM ruby:3.1.2-slim-bullseye
WORKDIR /app

RUN apt-get update && apt-get install -y libpq-dev gcc make libmariadb-dev
COPY Gemfile Gemfile.lock ./
RUN bundle install -j4
COPY . .
RUN bin/rails assets:precompile
