FROM ruby:2.7

ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock

RUN bundle install

