FROM node:10.17.0-jessie

RUN npm -g config set user root
RUN npm -g install scrypt

RUN echo "export NODE_PATH=/usr/local/lib/node_modules" >> ~/.profile
RUN echo "export NODE_PATH=/usr/local/lib/node_modules" >> ~/.bashrc

ENTRYPOINT ["/root/entrypoint.sh"]
