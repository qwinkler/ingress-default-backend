FROM nginx:1.17-alpine
LABEL maintainer="Artem Matyhin <amatyhin@mmi.ai>"
COPY src /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/default.conf
