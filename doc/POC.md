## Server preparing
With terraform I am preparing server [Main terraform](./main.tf) in GCP
Terraform instaling additionall Docker and minikube.

## Commands for I've used for AgroCD installing

Here's an explanation of each command:

1. `alias k="minikube kubectl --"`
   - This command sets up an alias `k` for the `minikube kubectl` command, allowing you to use `k` instead of `minikube kubectl` for subsequent commands.

2. `k create ns argocd`
   - This command creates a Kubernetes namespace called `argocd`.

3. `k apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml`
   - This command applies the Argo CD installation manifest file (`install.yaml`) to the `argocd` namespace. It fetches the manifest file from the specified URL and installs the necessary resources for Argo CD.

4. `k get all -n argocd`
   - This command retrieves all resources in the `argocd` namespace. It displays information about various Kubernetes objects such as deployments, services, pods, etc., that are part of the Argo CD installation.

5. `k port-forward svc/argocd-server -n argocd --address 0.0.0.0 8080:443`
   - This command sets up port forwarding from your local machine to the `argocd-server` service running in the `argocd` namespace. It allows you to access the Argo CD web interface locally by forwarding port 8080 on your machine to port 443 on the `argocd-server` service.

6. `k -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo`
   - This command retrieves the password for the initial admin user of Argo CD. It retrieves the secret named `argocd-initial-admin-secret` in the `argocd` namespace, extracts the password from the secret's data field using JSONPath, decodes the password from base64 format, and then prints it to the console.

Please note that the successful execution of these commands depends on having Minikube and Kubernetes configured properly on your machine, as well as having the necessary network connectivity and permissions to perform the operations.

Additionaly you may need create firewall rule with next command:

`gcloud compute firewall-rules create allow-argocd --allow tcp:8080 --description "Allow inbound traffic for ArgoCD" --direction INGRESS --priority 1000 --target-tags argocd`

And add tag `argocd` to instance runing minicube with AgroCD