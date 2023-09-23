docker build -t palondomus/fast-api .
docker push palondomus/fast-api
minikube start --driver=docker
kubectl delete -f kubernetes.yaml
kubectl apply -f kubernetes.yaml
minikube service fast-api-service
