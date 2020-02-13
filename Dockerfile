FROM node:10.17.0-jessie

RUN npm -g config set user root
RUN npm -g install scrypt

ENV NODE_PATH /usr/local/lib/node_modules

ADD entrypoint.sh /root/

ENTRYPOINT ["/root/entrypoint.sh"]
