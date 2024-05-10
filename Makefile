postgres:
	docker run --name postgres-db -p 8000 -e POSTGRES_USER=admin -e POSTGRES_PASSWORD=admin -d postgres:latest


createdb:
	docker exec -it postgres-db createdb --username=admin practice1


dropdb:
	docker exec -it postgres-db dropdb --username=admin practice1

migrateup:
	migrate -path db/migration -database "postgresql://admin:admin@localhost:8000/practice1?sslmode=disable" -verbose up

migratedown:
	migrate -path db/migration -database "postgresql://admin:admin@localhost:8000/practice1?sslmode=disable" -verbose down



.PHONY:postgres createdb dropdb migrateup migratedown