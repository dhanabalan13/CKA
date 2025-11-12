#Q1
kubectl create namespace auto-scale
kubectl create deployment apache-server --image=nginx -n auto-scale

#Q2
kubectl create ns spline-reticulator
kubectl create deployment front-end -n spline-reticulator --image=nginx --dry-run=client -o yaml > depl.yaml
kubectl apply -f depl.yaml

#Q3
