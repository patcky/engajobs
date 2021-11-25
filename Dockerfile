FROM ruby:3.0.3-bullseye
VOLUME /app
WORKDIR /app
ENV GEM_HOME="/usr/local/bundle"
ENV PATH $GEM_HOME/bin:$GEM_HOME/gems/bin:$PATH