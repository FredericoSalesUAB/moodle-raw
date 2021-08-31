#!/bin/bash
docker run \
	-p 80:80 \
	-p 443:443 \
	--hostname pimp-moodle \
	--restart=always \
	-v /srv/moodle:/var/www/html/pimp-moodle \
	--env EDITOR=vim \
	--env VISUAL=vim \
	--env PHP_MEMORY_LIMIT=512m \
	-d satangos/moodle