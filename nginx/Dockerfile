FROM nginx:1.15.1

WORKDIR /var/www/html

COPY ./conf/nginx.conf /etc/nginx/nginx.conf
COPY ./conf/wordpress.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]
