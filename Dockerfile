# Dockerfile.production
FROM registry.semaphoreci.com/ruby:2.7

ENV INSTALL_PATH /opt/app
RUN mkdir -p $INSTALL_PATH

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg -o /root/yarn-pubkey.gpg && apt-key add /root/yarn-pubkey.gpg
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y --no-install-recommends nodejs yarn

WORKDIR $INSTALL_PATH
COPY engajobs-app/ .
RUN rm -rf node_modules vendor
RUN gem install rails bundler
RUN bundle install
RUN yarn install

CMD bundle exec unicorn -c config/unicorn.rb