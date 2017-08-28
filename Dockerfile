FROM ruby:2.4.1-alpine3.6

WORKDIR /app

RUN apk add --update \
    build-base \
    postgresql-dev

COPY Gemfile* /app/
RUN bundle install

ADD . /app

EXPOSE 3000

CMD ["rails", "server"]
