FROM nginx:1.21.3

RUN rm -f /etc/nginx/conf.d/*

ADD nginx.conf /etc/nginx/conf.d/webapp.conf

# CMD /usr/sbin/nginx -g 'demon off;' -c /etc/nginx/nginx.conf