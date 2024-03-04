# https://hub.docker.com/_/ruby
# https://github.com/docker/awesome-compose/tree/master/official-documentation-samples/rails/

ARG RUBY_VERSION=""

FROM ruby:${RUBY_VERSION}

ARG RAILS_VERSION=""
ARG MYSQL_VERSION=""

# ビルド用ディレクトリ
RUN mkdir -p /build/rails/${RAILS_VERSION} && chmod -R 0777 /build/rails/${RAILS_VERSION}
WORKDIR /build/rails/${RAILS_VERSION}

# https://bundler.io/guides/gemfile.html
# https://rubygems.org/gems/rails?locale=ja
RUN touch Gemfile \
    && touch Gemfile.lock \
    && echo -n " \n\
    source 'https://rubygems.org' \n\
    gem 'rails', '${RAILS_VERSION}'\n\
    gem 'mysql2', '${MYSQL_VERSION}'\n\
    " > Gemfile \
    && bundle install \
    && rails _${RAILS_VERSION}_ new src -s

# 生成したrailsプロジェクトのGemfileを使用してbundle install
WORKDIR /build/rails/${RAILS_VERSION}/src
RUN bundle install

RUN mkdir -p /app/src && chmod -R 0777 /app/src
WORKDIR /app/src

EXPOSE 3000