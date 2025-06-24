docker --help

docker volume ls

docker volume create mongodb-dev-volume

docker container create --name mongodb-dev --publish 27017:27017 --mount "type=volume,source=mongo-data,target=/data/db" --env MONGO_INITDB_ROOT_USERNAME=your_username --env MONGO_INITDB_ROOT_PASSWORD=your_password mongo:latest