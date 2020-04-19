FROM nginx:1.17-alpine
LABEL maintainer="Artem Matyhin <amatyhin@mmi.ai>"
COPY src/html /usr/share/nginx/html
COPY src/default.conf /etc/nginx/conf.d/default.conf
