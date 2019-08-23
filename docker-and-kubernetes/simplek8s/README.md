# Onwards to Kubernetes

## 164. Connecting to Running Containres

```bash
## cd /path/to/simplek8s
kubectl apply -f client-pod.yaml
kubectl apply -f client-node-pod.yaml
```

```bash
## cd /path/to/simplek8s
kubectl get pods
```

## 168. Declarative Updates in Action

The command to apply the change 

```bash
kubectl apply -f client-pod.yaml
## Check the pod
kubectl get pods
```

Get the detail information of the pod

```bash
kubectl describe pod client-pod
```

## 173. Applying a Deployment

```bash
kubectl delete -f client-pod.yaml
```

```bash
kubectl apply -f client-deployment.yaml
kubectl get deployments
```

## 174. Why Use Services?

```bash
minikube ip
```

```
192.168.99.110
```

```
192.168.99.110:31515
```

```bash
kubectl get pods -o wide
```
