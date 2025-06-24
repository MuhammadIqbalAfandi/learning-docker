docker --help

#Restore
docker volume create mongo-data-restore

#option --name tidak ditulis, membiarkan penggunaan nama default
#karena pada akhirnya container akan di hapus setelah proses restore selesai
#--name digunakan jika proses restore lama dan ingin melihat log nya

  docker run --rm \
  --mount "type=volume,source=mongo-data-restore,target=/data" \
  --mount "type=bind,source=/home/iqbal/database-data/backup,target=/backup" \
  alpine:latest tar xzvf /backup/mongo-data-backup.tar.gz -C /data


docker container create --name mongodb-dev-restore --publish 27020:27017 --mount "type=volume,source=mongo-data-restore,target=/data/db" --env MONGO_INITDB_ROOT_USERNAME=your_username --env MONGO_INITDB_ROOT_PASSWORD=your_password mongo:latest


docker container start mongodb-dev-restore
