Plugin tested with minikube, unfortunately script need additional file from K8S 
Download the latest Kubernetes release with the command:

```bash
curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
```
Make the kubectl binary executable:
```bash
chmod +x ./kubectl
```

Move the binary in to your PATH:
```bash
sudo mv ./kubectl /usr/local/bin/kubectl
```