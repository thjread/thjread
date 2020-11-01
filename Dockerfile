FROM nginx:1.19-alpine
COPY TileRender/www/dist /usr/share/nginx/html/main
COPY Reminders/Frontend/reminders/dist /usr/share/nginx/html/reminders
COPY nginx.conf /etc/nginx/nginx.conf
COPY ssl.conf /etc/nginx/ssl.conf
COPY security-headers.conf /etc/nginx/security-headers.conf
COPY api-security-headers.conf /etc/nginx/api-security-headers.conf
COPY wasm-security-headers.conf /etc/nginx/wasm-security-headers.conf
COPY pdf-security-headers.conf /etc/nginx/pdf-security-headers.conf
RUN rm -f /etc/nginx/conf.d/default.conf
COPY server.conf /etc/nginx/conf.d/server.conf
COPY certs /etc/nginx/certs
COPY server_name.conf /etc/nginx/server_name.conf
COPY server_name_main.conf /etc/nginx/server_name_main.conf
COPY server_name_reminders.conf /etc/nginx/server_name_reminders.conf
