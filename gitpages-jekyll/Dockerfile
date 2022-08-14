FROM ruby:2.7-alpine3.16

LABEL name="gitpages-jekyll"
LABEL email="putstack@gmail.com"
LABEL version="1.0"

RUN apk update
RUN apk add --no-cache build-base gcc cmake git
RUN gem update bundler && gem install bundler jekyll