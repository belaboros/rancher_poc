#Source.
# https://askubuntu.com/questions/948854/how-do-i-stress-test-cpu-and-ram-at-the-same-time


#stress --cpu 2 --timeout 300
stress --cpu 8 --io 4 --vm 4 --vm-bytes 1024M --timeout 300s



