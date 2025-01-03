FROM ruby:3.2.6-slim-bullseye
WORKDIR /app

RUN apt-get update && apt-get install -y libpq-dev gcc make libmariadb-dev
COPY Gemfile Gemfile.lock ./
RUN bundle install -j4
COPY . .
RUN bin/rails assets:precompile
CMD rm -f tmp/pids/server.pid && bin/rails server -b 0.0.0.0 -p 3000
