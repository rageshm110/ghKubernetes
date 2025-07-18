# ref - https://kubernetes.io/docs/concepts/workloads/controllers/deployment/#writing-a-deployment-spec
kubectl apply -f nginx-deploy.yaml 
kubectl get deployments
kubectl rollout status deployment/nginx-deployment
kubectl get pods -l app=nginx
kubectl logs nginx-deployment-85f687844d-7wcfp

# scaling the deployment
kubectl scale deployment/nginx-deployment --replicas=2

# performing a rolling update
kubectl set image deployment/nginx-deployment nginx=nginx:stable-alpine3.21

# deleting the deployment
kubectl delete deployment nginx-deployment