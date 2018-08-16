FROM node:latest

ADD compress.sh /usr/bin/compress

RUN npm i -g bread-compressor-cli && chmod +x /usr/bin/compress.sh