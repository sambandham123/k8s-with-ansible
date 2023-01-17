# k8s-with-ansible

## Code Structure

1. We have the below resources created in AWS
    a. VPC
    b. Subnet
    c. IGW
    d. Route Table
    e. Master EC2
    f. Worker EC2

2. These are present in the form of Modules and these modules are invoked by the **main.tf** present in the infrastructure folder

3. **providers.tf** and **pem file** should be present in the infrastructure folder.

4. Docker files are present in the **Docker Folder** and Ansible files are present in the **Ansible Folder**

5. We used ansible roles and these roles are incorporated in the ansible playbook

6. Github Actions are triggered by a specific file called **deploy.yaml** in the .github folder


## Kubernetes Structure

### Master Node steps

1. change the hostname to master
2. update packages -> sudo apt update [command]
3. create keys to make ssh
4. br filter
5. Install container Runtimes (CRIO)
6. run crio and dependencies
7. Install Kubeadm kubelet and kubectl
8. Init Kubeadm
9. operations on config file
10. Install weave network pods
11. Token Generate
12. Download the token file to the local machine
13. Download the kube-config file for Github actions 
14. make the cluster public for github actions. Refer this link -> https://www.wekeo.eu/docs/kubernetes-cluster-external-access
15. regenarate the certs
16. restart the api server
17. change the server addres from private to public in the kubeconfig file
18. download the public key from master to send it to worker

### Worker Node steps

1. change the hostname to worker
2. update packages -> sudo apt update [command]
3. create keys to make ssh 
4. br filter
5. Install container Runtimes (CRIO)
6. run crio and dependencies
7. Install Kubeadm kubelet and kubectl
8. upload the token file from local to server
9. Join the worker node to the cluster
10. upload the public key from master to worker
11. copy the content of pub key to authorized keys and delete the tmp file





