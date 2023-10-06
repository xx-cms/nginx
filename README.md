# nginx
nginx image

## startup
```shell
docker run --name nginx \
	-v ./basic.d:/etc/nginx/basic.d \
	-v ./proxy.d:/etc/nginx/proxy.d \
	-v ./domain.d:/etc/nginx/domain.d \
	-v ./update:/etc/nginx/update \
	-p 80:80 \
	-p 443:443 \
	-d x21146/cms-nginx:0.0.1
```

## usage
writing anything in "update" to reload nginx config
