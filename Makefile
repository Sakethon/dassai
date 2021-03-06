setup:
	cp .env.example .env
	cp src/.env.example src/.env
	docker-compose build --no-cache
	docker-compose up -d
	docker-compose exec phpfpm composer install
	docker-compose exec phpfpm php artisan key:generate
	docker-compose exec phpfpm php artisan migrate:fresh --seed
	docker-compose exec node /bin/sh -c "cd src && npm install"
	docker-compose exec phpfpm php artisan jetstream:install inertia
