FROM nginx:alpine
COPY static /usr/share/nginx/html/main
COPY Reminders/Frontend/reminders/dist /usr/share/nginx/html/reminders
COPY nginx.conf /etc/nginx/nginx.conf
COPY ssl.conf /etc/nginx/ssl.conf
RUN rm -f /etc/nginx/conf.d/default.conf
COPY server.conf /etc/nginx/conf.d/server.conf
COPY certs /etc/nginx/certs