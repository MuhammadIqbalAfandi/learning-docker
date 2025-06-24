docker container create --help

docker container create --name containerName --publish [port] --env [environment] imageName
docker container create --name exampleMongo --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=your_username --env MONGO_INITDB_ROOT_PASSWORD=your_password mongo:latest
