FROM alpine:latest

MAINTAINER alex <alexwhen@gmail.com>

RUN apk --update add nginx
RUN mkdir /run/nginx -p

COPY 2048 /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
