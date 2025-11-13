#Q1
kubectl create namespace auto-scale
kubectl create deployment apache-server --image=nginx -n auto-scale

#Q2
kubectl create ns spline-reticulator
kubectl create deployment front-end -n spline-reticulator --image=nginx --dry-run=client -o yaml > depl.yaml
kubectl apply -f depl.yaml

#Q3
kubectl apply -f https://raw.githubusercontent.com/dhanabalan13/CKA/refs/heads/main/synergy-leverager.yaml

#Q4
kubectl create ns priority
kubectl apply -f https://raw.githubusercontent.com/dhanabalan13/CKA/refs/heads/main/existingpriorityclass.yaml
kubectl create deployment -n priority busybox-logger --image=busybox:stable

#Q5
#No prerequite

#Q6
kubectl create ns argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

#Q7
kubectl create namespace mariadb
kubectl apply -f http://raw.githubusercontent.com/dhanabalan13/CKA/refs/heads/main/pv.yaml

#Q8
kubectl apply -f https://github.com/kubernetes-sigs/gateway-api/releases/download/v1.1.0/standard-install.yaml
kubectl apply -f https://raw.githubusercontent.com/nginxinc/nginx-gateway-fabric/v1.6.2/deploy/crds.yaml
kubectl apply -f https://raw.githubusercontent.com/nginxinc/nginx-gateway-fabric/v1.6.2/deploy/default/deploy.yaml

#Q9
kubectl apply -f https://raw.githubusercontent.com/dhanabalan13/CKA/refs/heads/main/gatewayclass.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.10.1/deploy/static/provider/cloud/deploy.yaml
echo "127.0.0.1 gateway.web.k8s.local" | sudo tee -a /etc/hosts 
kubectl apply -f https://raw.githubusercontent.com/dhanabalan13/CKA/refs/heads/main/ingress.yaml
kubectl apply -f https://raw.githubusercontent.com/dhanabalan13/CKA/refs/heads/main/webapp.yaml
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
  -subj "/CN=gateway.web.k8s.local" \
  -keyout tls.key -out tls.crt
kubectl create secret tls web-tls \
  --cert=tls.crt --key=tls.key \
  -n webapp

#Q9
kubectl apply -f https://raw.githubusercontent.com/projectcalico/calico/v3.28.2/manifests/tigera-operator.yaml

#Q10
kubectl apply -f https://raw.githubusercontent.com/dhanabalan13/CKA/refs/heads/main/wordpress.yaml

#Q11
wget https://github.com/Mirantis/cri-dockerd/releases/download/v0.3.17/cri-dockerd_0.3.17.3-0.ubuntu-focal_amd64.deb

#Q12
kubectl apply -f https://github.com/cert-manager/cert-manager/releases/latest/download/cert-manager.crds.yaml

#Q13
kubectl create namespace backend
kubectl create namespace frontend

#Q20
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
  -subj "/CN=webapp.local" \
  -keyout tls.key -out tls.crt
kubectl create ns webapp
kubectl create secret tls web-tls --cert=tls.crt --key=tls.key -n webapp
kubectl apply -f https://raw.githubusercontent.com/dhanabalan13/CKA/refs/heads/main/configmap.yaml
kubectl apply -f https://raw.githubusercontent.com/dhanabalan13/CKA/refs/heads/main/webappdep.yaml
kubectl apply -f https://raw.githubusercontent.com/dhanabalan13/CKA/refs/heads/main/websvc.yaml

#Q21
kubectl create namespace sound-repeater
kubectl apply -f https://raw.githubusercontent.com/dhanabalan13/CKA/refs/heads/main/echo-server.yaml
kubectl apply -f https://raw.githubusercontent.com/dhanabalan13/CKA/refs/heads/main/echo-svc.yaml



