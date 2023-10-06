FROM nginx:alpine3.18

RUN mkdir -p \
	/etc/nginx/basic.d \
	/etc/nginx/proxy.d \
	/etc/nginx/domain.d

RUN apk add inotify-tools

COPY ./watch.sh /docker-entrypoint.d/watch.sh
COPY ./nginx.conf /etc/nginx/nginx.conf

EXPOSE 443
