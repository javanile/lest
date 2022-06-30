
build:
	@docker-compose build lest

install: build
	@docker-compose run --rm lest composer install
	@docker-compose run --rm lest chmod 777 -R vendor/ composer.lock

## ====
## Test
## ====
test-phpunit:
	@docker-compose run --rm lest php bin/lest phpunit

test-vtiger:
	@docker-compose run --rm test-vtiger php lest/bin/lest