rm -rf *.log


POD=rancher-logging-fluentd-linux-ll2r5


kubectl logs -n cattle-logging pod/${POD} -c rancher-logging-fluentd > rancher-logging-fluentd.log
kubectl logs -n cattle-logging pod/${POD} -c rancher-logging-fluentd-reloader > rancher-logging-fluentd-reloader.log


