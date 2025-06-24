docker --help

#Backup
docker container stop mongodb-dev

#option --name tidak ditulis, membiarkan penggunaan nama default
#karena pada akhirnya container akan di hapus setelah proses backup selesai
#--name digunakan jika proses backup lama dan ingin melihat log nya

  docker run --rm \
  --mount "type=volume,source=mongo-data,target=/data" \
  --mount "type=bind,source=/home/iqbal/database-data/backup,target=/backup" \
  alpine:latest tar czvf /backup/mongo-data-backup.tar.gz -C /data .


docker container start mongodb-dev
