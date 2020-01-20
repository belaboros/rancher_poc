docker unpause $(docker ps -a -q)
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)



docker rm -f $(docker ps -qa)
docker rmi -f $(docker images -q)
docker volume rm $(docker volume ls -q)

