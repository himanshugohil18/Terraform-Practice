# 🚀 Multi-Environment Infrastructure using Terraform

This project demonstrates a modular and scalable infrastructure setup on AWS using Terraform, designed to manage multiple environments (Dev, Stage, Prod).

---

## 🧠 Architecture Overview

The infrastructure is built using Terraform with a reusable module (`infra_app`) and workspace-based environment management.

### 📊 Architecture Diagram
![Architecture Diagram](./images/diagram.png)

---

## 🌍 Environments

| Environment | EC2 Instances | Instance Type |
|------------|-------------|--------------|
| Dev        | 1           | t2.micro     |
| Stage      | 1           | t2.small     |
| Prod       | 2           | t2.medium    |

Each environment provisions:
- EC2 instances
- S3 bucket
- DynamoDB table

---

## ⚙️ Features

- ✅ Multi-environment setup using Terraform Workspaces  
- ✅ Reusable Terraform modules (`infra_app`)  
- ✅ Infrastructure as Code (IaC) best practices  
- ✅ Automated provisioning using Terraform CLI  
- ✅ Full lifecycle management (apply & destroy)  

---

## 🛠️ Tech Stack

- Terraform  
- AWS (EC2, S3, DynamoDB)  

---

## 📸 Execution Proof

### 🔹 Terraform Apply (Provisioning)
![Terraform Apply](./images/apply.png)

### 🔹 Terraform Destroy (Cleanup)
![Terraform Destroy](./images/destroy.png)

---

## 🚀 How to Use

```bash
# Initialize Terraform
terraform init

# Select workspace
terraform workspace select dev

# Plan
terraform plan

# Apply
terraform apply

# Destroy
terraform destroy
