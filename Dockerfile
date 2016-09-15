FROM ruby:2.3.1

ARG VCS_REF
ARG IMAGE_VERSION

LABEL org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/rajatvig/docker-pactbroker-client" \
      org.label-schema.name="pactbroker-client" \
      org.label-schema.description="Publish Pacts to a Pact Broker" \
      org.label-schema.version=$IMAGE_VERSION \
      org.label-schema.schema-version="1.0" \
      org.label-schema.docker.cmd="docker run -v './pacts:/pacts' -e URI_BROKER=http://localhost rajatvig/pactbroker-client:latest"

ENV APP_DIR /var/run

WORKDIR /var/run

COPY Gemfile $APP_DIR
COPY Gemfile.lock $APP_DIR
COPY Rakefile $APP_DIR

RUN gem install bundler && \
    bundle install

VOLUME /pacts

CMD ["rake", "pact:publish"]
