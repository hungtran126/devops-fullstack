# devops-fullstack

**PROJECT STRUCTURE**

1. app.tf → Contains Terraform scripts for provisioning infrastructure.
2. .github/workflows → Contains CI/CD pipeline configuration.
3. report-resources → Contains the images for reporting.
4. app_api → Contains Back-End source, Dockerfile and k8s - including helm for k8s

**CI/CD pineline**

1. Deploy an EKS Cluster using CI/CD for the main/dev environments.
![alt text](report-resources/workflow_provisioning_infra.png)

2. Build and Deploy Back-End
![alt text](/report-resources/workflow_dockerhub_backend.png)
    UPDATE:
        - Build and Deploy Back-End by Docker Hub and Kubernetes deploying to AWS EKS (commit - 984d69f)
    ![alt text](/report-resources/k8s-to-eks.png)
    ![alt text](/report-resources/eks-screen.png)
    ![alt text](/report-resources/eks-screen-1.png)
        - Build and Deploy Back-End by Docker Hub and Kubernetes(using Helm) deploying to AWS EKS (commit - bd2761d)
    ![alt text](/report-resources/helm-k8s-to-eks.png)
