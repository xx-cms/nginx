#!/bin/sh

#dir=$(dirname $0)
dir=/etc/nginx
touch $dir/update

watcher() {
	while inotifywait -qq -e modify $dir/update; do
		nginx -s reload
	done
}

watcher &
