docker container create --help

docker container create --name containerName --publish [port] imageName
docker container create --name exampleNginx --publish 8080:80 nginx:latest
