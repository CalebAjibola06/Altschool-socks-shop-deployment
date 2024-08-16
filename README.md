# Altschool-socks-shop-deployment

AltSchool Cloud Engineering Tinyuka 2023 Capstone Project
Project Overview
This project demonstrates the deployment of a microservices-based application, the Socks Shop, using Kubernetes on AWS. The setup emphasizes Infrastructure as Code (IaaC) for automation, security, and maintainability. Key technologies used include Terraform, Ansible, Prometheus, Grafana, and Let's Encrypt.

Project Objectives
Deploy Socks Shop Application: Set up the Socks Shop microservices demo on an AWS-based Kubernetes cluster.
Infrastructure as Code (IaaC): Automate the entire deployment process using Terraform and Ansible.
Monitoring & Logging: Implement Prometheus and Grafana for monitoring, with logs centralized for analysis.
Security: Secure the application with HTTPS using Let's Encrypt and enforce network perimeter security.
Project Structure
terraform/: Contains Terraform scripts to provision AWS infrastructure.

main.tf: Configures VPC, subnets, security groups, and an EKS cluster.
variables.tf, outputs.tf, provider.tf: Manage Terraform variables, outputs, and providers.
kubernetes/: Contains Kubernetes manifests for deploying the application and associated services.

complete-demo.yaml: Deploys the entire Socks Shop application.
prometheus/ and grafana/: Setup for Prometheus and Grafana monitoring tools.
cert-manager.yaml: Configures Let's Encrypt for SSL certificates.
ansible/: Contains Ansible playbooks for additional configuration management.

playbook.yml: Main playbook for configuring Kubernetes nodes and deploying the application.
scripts/: Automation scripts for deployment.

deploy.sh: Automates the Terraform and Kubernetes deployment process.
Prerequisites
AWS Account: Ensure you have an AWS account with appropriate IAM permissions.
Terraform: Install Terraform for IaaC.
Kubernetes CLI (kubectl): Install kubectl to interact with your Kubernetes cluster.
Ansible (Optional): Install Ansible for configuration management.

Deployment Guide

1. Initialize and Deploy AWS Infrastructure:

cd terraform/
terraform init
terraform apply -auto-approve

2 Configure Kubernetes:

aws eks --region us-east-1 update-kubeconfig --name socks-shop-cluster


3. Deploy the Application:

kubectl apply -f kubernetes/complete-demo.yaml

4. Set Up Monitoring and HTTPS:

kubectl apply -f kubernetes/prometheus/
kubectl apply -f kubernetes/grafana/
kubectl apply -f kubernetes/cert-manager.yaml

Security Considerations
HTTPS: The application is secured using Let's Encrypt for SSL certificates.
Network Security: Network policies are applied to restrict access within the Kubernetes cluster.
Sensitive Information: Use Ansible Vault to encrypt sensitive data such as AWS credentials.
Conclusion
This project demonstrates a complete, automated deployment pipeline for a microservices application on AWS . The focus on IaaC ensures that the deployment process is repeatable, secure, and easy to maintain
