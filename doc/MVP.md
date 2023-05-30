## Aplication deployment in AgroCd
Installing Minikibe and Agrocd described [here](./POC.md)

## For fast start please fill next fields

 - Application name
 - Project Name
 - Sync Policy
 - Mark "Auto-Create Namespace"
 
 ![1](/files/1-min.png)
 
 - Add repo URL and select Revision and path to helm
 -  Also select Cluster URL and namespace for application running. Please don't forget tomark "Auto-Create Namespace"
 
 ![2](/files/2-min.png)
 
 - Press the button "Create"
 
**App Details**
 ![3](/files/3-min.png)
Adding rule for GCP firewall

       gcloud compute firewall-rules create allow-argocd-8088 --allow tcp:8088 --description "Allow inbound traffic for ArgoCD" --direction INGRESS --priority 1000 --target-tags argocd

Set port forwarding

    k port-forward -n demodemo svc/ambassador --address 0.0.0.0  8088:80

Test by CURL

    curl 35.188.22.101:8088                       
    k8sdiy-api:599e1af%      

Test by picture 

![4](/files/4.png)


