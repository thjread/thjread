FROM nginx:1.15-alpine
COPY static /usr/share/nginx/html/main
COPY Reminders/Frontend/reminders/dist /usr/share/nginx/html/reminders
COPY nginx.conf /etc/nginx/nginx.conf
COPY ssl.conf /etc/nginx/ssl.conf
COPY security-headers.conf /etc/nginx/security-headers.conf
RUN rm -f /etc/nginx/conf.d/default.conf
COPY server.conf /etc/nginx/conf.d/server.conf
COPY certs /etc/nginx/certs
