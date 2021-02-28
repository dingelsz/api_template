FROM nginx

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ../certs /app/certs/

CMD nginx -g "daemon off;" & sleep 10 ; nginx stop

