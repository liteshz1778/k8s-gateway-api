#!/bin/bash


kubectl apply -f gateway-class-definition.yml
kubectl apply -f gateway-definition.yml
kubectl apply -f desktop_users.yml
kubectl apply -f desktop-http-route-definition.yml
kubectl apply -f android_users.yaml
kubectl apply -f android-http-route-definition.yml
kubectl apply -f iphone_users.yml
kubectl apply -f android-http-route-definition.yml


echo;
export ENVOY_GW_NODEPORT=$(kubectl get svc -n envoy-gateway-system -o jsonpath='{.items[0].spec.ports[0].nodePort}')
echo "ENVOY GW NODEPORT is: ${ENVOY_GW_NODEPORT}"
echo;

echo "Hitting Books Application Webpages!!"
echo;

curl http://$(hostname -i):${ENVOY_GW_NODEPORT}/ -H "Host: www.mybookstore.com"
echo;

curl http://$(hostname -i):${ENVOY_GW_NODEPORT}/android/ -H "Host: www.mybookstore.com"
echo;

curl http://$(hostname -i):${ENVOY_GW_NODEPORT}/iphone/ -H "Host: www.mybookstore.com"
echo;
