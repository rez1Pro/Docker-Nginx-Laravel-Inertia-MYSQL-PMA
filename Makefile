del-img:
	docker rmi docker-laravel-app docker-laravel-node docker-laravel-nginx -f
up:
	sudo docker compose up -d
d-npm:
	docker compose run --rm node-server npm install
down:
	sudo docker compose down
watch:
	sudo docker compose watch
php:
	sudo docker exec -it php-server sh
node:
	sudo docker exec -it node-server sh
npm:
	sudo docker exec -it node-server sh -c "${cmd}"