CONTAINER_ID=$(docker ps -a -q --filter ancestor=rancher/rancher --format="{{.ID}}")
docker logs ${CONTAINER_ID} >rancher.log

