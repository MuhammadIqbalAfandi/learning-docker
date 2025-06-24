docker container --help

docker container ls -a

docker container create --name containerName imageName
docker container create --name exampleRedis redis:latest

docker container start containerName
docker container start exampleRedis

docker container stop containerName
docker container stop exampleRedis

docker container rm containerName
docker container rm exampleRedis
