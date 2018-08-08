.PHONY: jupyter apistar run run-daemon

run: jupyter apistar
	docker-compose up

run-daemon:
	docker-compose up -d

jupyter:
	docker-compose build $@

apistar:
	docker-compose build $@

clean:
	docker-compose rm -fv
	docker-compose down -v
