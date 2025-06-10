SERVICES := orders cart toys subs bucket

.PHONY: all build up down logs

build:
	@for svc in $(SERVICES); do \
		echo "Building $$svc..."; \
		docker-compose build $$svc; \
	done

up:
	docker-compose up --build

down:
	docker-compose down

logs:
	docker-compose logs -f
