FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.2.5

RUN gem install engineyard-metadata --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["ey_ssh_aliases"]
CMD ["--help"]
