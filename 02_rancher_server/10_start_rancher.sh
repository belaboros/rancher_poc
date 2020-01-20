# latest Rancher version
#sudo docker run -d --restart=unless-stopped -p 80:80 -p 443:443 rancher/rancher


# a specific Rancher version
sudo docker run -d --restart=unless-stopped -p 80:80 -p 443:443 rancher/rancher:v2.3.3


echo "IP addresses:"
ip -c a