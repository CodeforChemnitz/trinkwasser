#!/bin/bash
$(boot2docker shellinit)
docker stop vhost-trinkwasser
docker rm vhost-trinkwasser
docker run --name vhost-trinkwasser -p 80:80 -v /Users/vhosts/oklabs/trinkwasser/src:/app -d tutum/apache-php
