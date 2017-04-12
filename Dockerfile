FROM node:6

WORKDIR /app

# Install yarn
RUN apt-get update && apt-get -y upgrade && apt-get install -y curl apt-transport-https ca-certificates
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y yarn && rm -rf /var/lib/apt/lists/*

# Add common global
RUN yarn global add node-gyp
