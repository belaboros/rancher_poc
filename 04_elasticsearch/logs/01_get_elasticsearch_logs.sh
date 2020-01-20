CONTAINER_ID=$(docker ps -a -q --filter ancestor=docker.elastic.co/elasticsearch/elasticsearch:7.5.1 --format="{{.ID}}")
#echo "${CONTAINER_ID}"

docker logs ${CONTAINER_ID} >elasticsearch.log



