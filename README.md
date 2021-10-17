docker build -t demokubernetes:1.0.0 .
docker login
docker push sai194/demokubernetes:1.0.0

docker run --env demo.prefix=Jedi -it -p8080:8080 demokubernetes:1.0.0

https://minikube.sigs.k8s.io/docs/start/

minikube start

kubectl get po -A


kubectl apply -f k8s-deploy-svc.yaml

kubectl apply -f deploy.yaml
kubectl apply -f service.yaml

expose service:
minikube service demo-svc --url

http://127.0.0.1:56937/IK

kubectl delete -f k8s-deploy-svc.yaml

mikinube stop

brew install helm

helm upgrade --wait --install demo-helm-k8s ./demo-helm

helm uninstall demo-helm-k8s
