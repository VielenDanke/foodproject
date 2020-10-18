FROM nginx:latest

ADD . /usr/share/nginx/html

RUN apt -qq update
RUN apt -qq install -y nodejs
RUN apt -qq install -y npm

WORKDIR /usr/share/nginx/html

RUN npm install
RUN npm install --save-dev webpack
RUN npm install --save-dev @babel/core
RUN npm install @babel/preset-env --save-dev
RUN npm install babel-loader
