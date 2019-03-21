# Builds a docker image with Ruby, RSpec and AWS SDK

FROM ruby
LABEL maintainer=danhill@digital.uc.dwp.gov.uk
ENV GEM_HOME="/usr/local/bundle"
ENV PATH $GEM_HOME/bin:$GEM_HOME/gems/bin:$PATH
COPY Gemfile $APP_HOME/Gemfile

RUN set -ex \
    && unset BUNDLE_PATH \
    && unset BUNDLE_BIN \
    && echo "===> Installing RSpec and AWS SDK ... ..." \
    && bundle install

CMD bundle list
