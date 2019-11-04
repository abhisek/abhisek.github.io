FROM ruby:2.6-slim

RUN apt-get update && apt-get install -y build-essential ruby-dev

WORKDIR /site
RUN gem install jekyll bundler

COPY Gemfile Gemfile.lock ./
RUN bundle install

EXPOSE 4000

ENTRYPOINT ["jekyll"]
