#!/usr/bin/env bash

export DART_SASS_VERSION=1.79.1


curl -LJO https://github.com/sass/dart-sass/releases/download/${DART_SASS_VERSION}/dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz && \
tar -xf dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz && \
rm dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz && \
export PATH=/opt/build/repo/dart-sass:$PATH && \
sass --version && \
hugo version && \
hugo "$@"
