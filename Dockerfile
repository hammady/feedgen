FROM ruby:2.3.3
RUN apt-get update -qq && \
    apt-get install -y \
        build-essential locales libpq-dev nodejs

# Use en_US.UTF-8 as our locale
RUN locale-gen en_US.UTF-8 
ENV LANG en_US.UTF-8 
ENV LANGUAGE en_US:en 

WORKDIR /app
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock

ENV RAILS_ENV development
ENV RACK_ENV development

RUN gem install bundler -v 1.15.1 && \
    bundle config --local without test && \
    bundle config --local github.https true && \
    bundle config && \
    bundle install

EXPOSE 8080

ENTRYPOINT ["bundle", "exec"]
CMD puma -C config/puma.rb
