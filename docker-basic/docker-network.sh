docker network --help

docker network create --driver bridge mongo-network

docker container create --name mongodb-dev --network mongo-network --publish 27017:27017 --mount "type=volume,source=mongo-data,target=/data/db" --env MONGO_INITDB_ROOT_USERNAME=your_username --env MONGO_INITDB_ROOT_PASSWORD=your_password mongo:latest

docker image pull mongo-express:latest

docker container create --name mongodb-express --network mongo-network --publish 8081:8081 --env ME_CONFIG_MONGODB_URL=mongodb://your_username:your_password@mongodb-dev:27017/ mongo-express:latest

docker network disconnect mongo-network mongodb-dev

docker network connect mongo-network mongodb-dev