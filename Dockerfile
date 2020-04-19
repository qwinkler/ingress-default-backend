FROM nginx:1.17-alpine
LABEL maintainer="Artem Matyhin <art.matyhin@gmail.com>"
COPY src/html /usr/share/nginx/html
COPY src/default.conf /etc/nginx/conf.d/default.conf
