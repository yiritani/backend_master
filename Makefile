postgres:
	docker run --name postgres -e POSTGRES_PASSWORD=postgres -d -p 5432:5432 postgres:latest


createdb:
	createdb -U postgres -h localhost -p 5432 -e -O postgres -T template0 -E UTF8 -l en_US.UTF-8


sqlc:
	sqlc generate

test:
	go test -v -cover ./...