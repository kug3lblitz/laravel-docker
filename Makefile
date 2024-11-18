setup:
	@make build
	@make up
	@make composer-update

build:
	docker-compose build --no-cache --force-rm

stop:
	docker-compose stop

up:
	docker-compose up -d

composer-update:
	docker exec app bash -c "composer update"

data-seed:
	docker exec app bash -c "php artisan migrate"
	docker exec app bash -c "php artisan db:seed"

data:
	docker exec app bash -c "php artisan migrate"