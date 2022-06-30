
build:
	@docker-compose build lest

install: build
	@docker-compose run --rm lest composer install

## ====
## Test
## ====
test-vtiger:
	@docker-compose run --rm test-vtiger php lest/bin/lest