#https://www.elastic.co/guide/en/kibana/current/docker.html


docker pull docker.elastic.co/kibana/kibana:7.5.1
#docker run --link YOUR_ELASTICSEARCH_CONTAINER_NAME_OR_ID:elasticsearch -p 5601:5601 {docker-repo}:{version}
CONTAINER_ID=$(docker ps -a -q --filter ancestor=rancher/rancher --format="{{.ID}}")
docker run --link 6b1931cab607:elasticsearch -p 5601:5601 docker.elastic.co/kibana/kibana:7.5.1




