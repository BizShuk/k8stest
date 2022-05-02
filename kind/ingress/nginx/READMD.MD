# Nginx ingress

### Install nginx ingress controller

One of node should have a label for node affinity **ingress-ready=true**

`kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml`

### Deploy hello application with ingress

1. `docker pull hashicorp/http-echo:0.2.3`
2. `kind load docker-image hashicorp/http-echo:0.2.3 --name mc1`
3. `kubectl apply -f https://kind.sigs.k8s.io/examples/ingress/usage.yaml`
