.PHONY: build
build:
	go build .

.PHONY: docker
docker:
	docker build -t ecommerce-sales-clearance .

.PHONY: run
run:
	docker run --name ecommerce-sales-clearance -d ecommerce-sales-clearance

.PHONY: tag
tag:
	docker tag ecommerce-sales-clearance:latest renegmedal/ecommerce-sales-clearance:1.0.1

.PHONY: push
push:
	docker push renegmedal/ecommerce-sales-clearance:1.0.1

.PHONY: up
up:
	docker-compose up --build -d
