FROM ruby:2.7-alpine3.16

LABEL name="gitpages-jekyll"
LABEL email="putstack@gmail.com"
LABEL version="1.0"

# update package manager & install default program
RUN apk update
RUN apk add --no-cache build-base gcc cmake git curl

# install bundler
RUN gem update bundler \
    && gem install bundler \
    # git-pages latest support version (newest is upper 4.2.x, but not supported)
    && gem install jekyll -v 3.9.2

# setting entrypoint
COPY entrypoint.sh /usr/local/bin/entrypoint
WORKDIR /srv/jasper2
ENTRYPOINT ["entrypoint"]