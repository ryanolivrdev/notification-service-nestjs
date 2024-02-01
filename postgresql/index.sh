
#!/bin/bash

source variables.sh

docker stop ${POSTRES_CONTAINER_NAME} || true
docker rm ${POSTRES_CONTAINER_NAME} ||

echo "### STARTING POSTGRES... ###"
docker run \
  --name ${POSTRES_CONTAINER_NAME} \
  --network=host \
  -e POSTGRES_PASSWORD=${POSTGRES_PASSWORD} \
  -p ${POSTGRES_PORT}:${POSTGRES_PORT} \
  -d postgres


echo "### POSTGRES RUNNING IN PORT: ${POSTGRES_PORT} ###"
