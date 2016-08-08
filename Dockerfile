FROM ubuntu:14.04

RUN apt-get update && apt-get install -y \
  curl \
  npm \
  nodejs \
  git;

ARG NVM_VERSION=v0.31.4
ARG NODE_VERSION=v4.4.7

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/${NVM_VERSION}/install.sh | bash

# work in a bash shell so that source will work
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
# docker is not running in login shell so do it all in one
RUN source ~/.nvm/nvm.sh && \
  nvm install $NODE_VERSION && \
  nvm alias default $NODE_VERSION && \
  nvm use --delete-prefix default && \
  node -v && \
  npm i npm -g && \
  npm -v
