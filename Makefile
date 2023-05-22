# install: #install react lib
#	make install-app install-db

install-app: #install react lib
	npm install react-scripts@latest

install-db: #create database container
    docker run --name postgres-db -e POSTGRES_PASSWORD=docker -p 5867:5867 -d postgres

# start: #start project
#     make start-app start-db

start-app: #start app
	npm start

start-db: #start database
    docker run -d --name my-postgresdb-container -p 5867:5867 my-postgres-db

stop-db: #stop database container
	docker stop postgres-db