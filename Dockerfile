FROM nginx:alpine

WORKDIR /etc/nginx

# remove the default
RUN rm /etc/nginx/conf.d/default.conf

# move over out config
COPY nginx.conf .
COPY ./conf.d/ conf.d

# debug
# RUN cat nginx.conf