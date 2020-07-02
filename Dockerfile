FROM nginx:alpine

RUN rm /etc/nginx/conf.d/default.conf

COPY ./conf.d/ /etc/nginx/conf.d

RUN ls /etc/nginx/conf.d