start: 
	- UID=$(id -u) GID=$(id -g) && docker-compose up -d
	- sudo docker-compose run npm run dev 
	- sudo docker-compose run npm run watch 
composer:
	- sudo docker-compose run
clear-config:
	- sudo docker-compose run php php artisan config:cache
migrate:
	- sudo docker-compose run php php artisan migrate