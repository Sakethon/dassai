setup:
	cp .env.example .env
	cp ./src/.env.example ./src/.env
	docker-compose build
	docker-compose run --rm phpfpm composer install
	docker-compose run --rm phpfpm php artisan migrate
	docker-compose run --rm node npm install
	docker-compose up
