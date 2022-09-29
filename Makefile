default: run

run:
	- docker-compose up -d --build
	- docker exec -it sweet-php composer install
	- docker exec -it sweet-php php artisan key:generate
	- docker exec -it sweet-php php artisan migrate
	- docker-compose exec php chown -R www-data:www-data /var/www/html/storage/

status:
	- docker ps -f name=sweet-nginx
	- docker ps -f name=sweet-php

clean:
	- sudo rm -rf vendor
	- docker stop sweet-nginx sweet-php
	- docker rm sweet-nginx sweet-php
	- docker rmi nginx sweet_php

bash:
	- docker exec -it sweet-php bash

bash-server:
	- docker exec -it sweet-nginx bash

restart:
	- docker stop sweet-nginx sweet-php
	- docker start sweet-nginx sweet-php