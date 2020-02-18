FROM node:10.17.0-jessie

RUN npm -g config set user root
RUN npm -g install secp256k1@3.7 scrypt@6.0 eccrypto@1.1 keccak@2.1

ENV NODE_PATH /usr/local/lib/node_modules

ADD entrypoint.sh /root/

ENTRYPOINT ["/root/entrypoint.sh"]
