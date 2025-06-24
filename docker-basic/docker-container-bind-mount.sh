docker container --help

docker container create --name mongodb-dev --publish 27017:27017 --mount "type=bind,source=/home/iqbal/database-data/mongo-data,target=/data/db" --env MONGO_INITDB_ROOT_USERNAME=your_username --env MONGO_INITDB_ROOT_PASSWORD=your_password mongo:latest