#!/bin/bash
# Query the log files of logging components


#rm -rf *.log
#POD=rancher-logging-fluentd-linux-ll2r5
#kubectl logs -n cattle-logging pod/${POD} -c rancher-logging-fluentd > rancher-logging-fluentd.log
#kubectl logs -n cattle-logging pod/${POD} -c rancher-logging-fluentd-reloader > rancher-logging-fluentd-reloader.log





#kubectl get pods -A | grep rancher-logging-fluentd-linux
#kubectl get pods -o custom-columns=POD_NAME:.metadata.name -A | grep fluentd

rm *.log


PODS=$(kubectl get pods -o custom-columns=POD_NAME:.metadata.name -A | grep fluentd)
#echo -e "FluentD PODS:\n${PODS}"

for POD in ${PODS}; do
    echo -e "\n\n${POD}_rancher-logging-fluentd"
    kubectl -n cattle-logging logs ${POD} -c rancher-logging-fluentd > ${POD}_rancher-logging-fluentd.log

    echo -e "\n\n${POD}_rancher-logging-fluentd-reloader"
    kubectl -n cattle-logging logs ${POD} -c rancher-logging-fluentd-reloader > ${POD}_rancher-logging-fluentd-reloader.log
done


# save the config JSON file
kubectl get secret -n cattle-logging rancher-logging-fluentd -o jsonpath='{.data.cluster\.conf}' | base64 --decode >rancher-logging-fluentd.config.json

PODS=$(kubectl get pods -o custom-columns=POD_NAME:.metadata.name -A | grep rancher-logging-log-aggregator)
echo -e "\n\nLog aggregator PODs:"
for POD in ${PODS}; do
    echo -e "\n\n${POD}"
    kubectl -n cattle-logging logs ${POD} -c log-aggregator > ${POD}.log
    #kubectl -n cattle-logging get pods ${POD}

done





