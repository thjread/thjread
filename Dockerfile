FROM nginx:alpine
COPY nginx.conf /etc/nginx/nginx.conf
RUN rm -f /etc/nginx/conf.d/default.conf
COPY server.conf /etc/nginx/conf.d/server.conf
COPY cloudflare-allow.conf /etc/nginx/cloudflare-allow.conf
COPY certs /etc/nginx/certs
COPY static /usr/share/nginx/html
