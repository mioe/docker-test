all: up

build:
	docker-compose build

up:
	docker-compose up

down:
	docker-compose down

db:
	docker-compose exec database bash

back:
	docker-compose exec backend bash
