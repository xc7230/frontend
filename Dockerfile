FROM nginx:latest
EXPOSE 80
RUN rm -rf /etc/nginx/conf.d/default.conf
RUN apt update && apt install wget
ADD *.html /usr/share/nginx/html/
CMD wget http://100.100.100.119:1234/default.conf -O /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'