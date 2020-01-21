echo "Start rancher server and visit Rancher UI, start a new cluster to receive the command needed to start the rancher agent on the worker"
echo "You need to start 3 things: etcd, controlplane and worker"
echo "You will get a command like below from Rancher server:"
echo "sudo docker run -d --privileged --restart=unless-stopped --net=host -v /etc/kubernetes:/etc/kubernetes -v /var/run:/var/run rancher/rancher-agent:v2.3.3 --server https://10.93.201.174 --token 5wqnnnstxvwtkfxqrwq9h64t24jxrj2468btsbnwckk6v527ctwjcs --ca-checksum 2489ccc44457e80af456ec2b17ef90002f07a0e533b31b7e22f869a327a2cb33 --etcd --controlplane --worker"
#sudo docker run -d --privileged --restart=unless-stopped --net=host -v /etc/kubernetes:/etc/kubernetes -v /var/run:/var/run rancher/rancher-agent:v2.3.3 --server https://10.93.201.174 --token 5wqnnnstxvwtkfxqrwq9h64t24jxrj2468btsbnwckk6v527ctwjcs --ca-checksum 2489ccc44457e80af456ec2b17ef90002f07a0e533b31b7e22f869a327a2cb33 --etcd --controlplane --worker
