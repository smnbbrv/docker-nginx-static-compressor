FROM node:10-alpine

ADD compress.sh /usr/bin/compress

RUN npm i -g bread-compressor-cli && chmod +x /usr/bin/compress