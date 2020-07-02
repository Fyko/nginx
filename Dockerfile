FROM nginx:alpine

WORKDIR /etc/nginx

# remove the default
RUN rm conf.d/default.conf

# move over out config
COPY nginx.conf .
COPY ./conf.d/ conf.d

# move over the forbidden page
COPY index.html html/index.html
