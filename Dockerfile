FROM alpine

RUN apk add --no-cache nginx nginx-mod-rtmp \
        && mkdir -p /run/nginx

COPY rtmp.conf /etc/nginx/nginx.conf

VOLUME /data

EXPOSE 1935
EXPOSE 8080

STOPSIGNAL SIGTERM

CMD ["nginx"]
