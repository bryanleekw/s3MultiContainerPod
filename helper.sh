export NODE_IP=minikube
export NODE_PORT=30085

curl $NODE_IP:$NODE_PORT/init

curl -i -H "Content-Type: application/json" -X POST -d '{"uid":"1","user":"bryan lee"}' http://$NODE_IP:$NODE_PORT/users/add
curl -i -H "Content-Type: application/json" -X POST -d '{"uid":"2","user":"john ming"}' http://$NODE_IP:$NODE_PORT/users/add
curl -i -H "Content-Type: application/json" -X POST -d '{"uid":"3","user":"test 3"}' http://$NODE_IP:$NODE_PORT/users/add
curl -i -H "Content-Type: application/json" -X POST -d '{"uid":"4","user":"test 4"}' http://$NODE_IP:$NODE_PORT/users/add

curl http://$NODE_IP:$NODE_PORT/users/1
curl http://$NODE_IP:$NODE_PORT/users/2
curl http://$NODE_IP:$NODE_PORT/users/3
curl http://$NODE_IP:$NODE_PORT/users/4


