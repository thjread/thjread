FROM nginx:alpine
COPY nginx.conf /etc/nginx/nginx.conf
RUN rm -f /etc/nginx/conf.d/default.conf
COPY dev/server.conf /etc/nginx/conf.d/server.conf
COPY static /usr/share/nginx/html
