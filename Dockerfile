FROM ruby:2

WORKDIR /usr/src/app
COPY Gemfile mustache.gemspec ./
RUN gem install mustache
RUN bundle install
COPY . .
RUN gem pristine mustache
