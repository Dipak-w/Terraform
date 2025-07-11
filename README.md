# 🌩️ Terraform AWS Infrastructure Automation

## 📌 Project Overview

This repository contains Terraform configurations designed to provision and manage AWS infrastructure components such as EC2 instances, IAM roles/policies, and reusable modules. It reflects a hands-on approach to Infrastructure as Code (IaC), enabling automated, scalable, and secure cloud architecture aligned with DevOps best practices.

---

## 🚀 Setup Instructions

### 🔧 Prerequisites
- AWS CLI configured with appropriate credentials
- Terraform v1.0+ installed
- An S3 bucket and DynamoDB table for remote state (optional but recommended)

### 📁 Directory Structure

terraform/
├── ec2/
│   └── main.tf
├── iam/
│   └── main.tf
├── modules/
│   ├── ec2-instance/
│   └── iam-role/
├── variables.tf
├── outputs.tf
└── provider.tf
```

### 📦 Initialization & Deployment

```bash
cd terraform
terraform init           # Initialize backend and modules
terraform plan           # Review changes
terraform apply          # Create AWS resources
```

---

## 🧱 Terraform Modules

### 1️⃣ EC2 Module

Creates a customizable EC2 instance with key attributes exposed via variables:
```hcl
module "ec2_instance" {
  source           = "./modules/ec2-instance"
  instance_type    = "t2.micro"
  ami_id           = var.ami_id
  key_name         = var.key_name
  security_groups  = ["default"]
}
```

### 2️⃣ IAM Role Module

Creates an IAM role with attached policies:
```hcl
module "iam_role" {
  source      = "./modules/iam-role"
  role_name   = "ec2-access-role"
  policy_json = file("policies/ec2-policy.json")
}
```

---

## ✅ Features

- Provision EC2 instances with tagging, key pairs, and SG association
- IAM role and policy automation with fine-grained access control
- Modular architecture to enable reuse across environments
- Parameterized variables for environment-specific configurations

---

## 🔍 Future Enhancements

- Add support for RDS provisioning and autoscaling groups
- Integrate with CI/CD (Jenkins/Terraform Cloud)
- Add remote backend configuration (S3 + DynamoDB)

---

## 📬 Contact

Maintained by [Dipak Waghmare](https://github.com/Dipak-w)  
Feel free to fork, contribute, or connect for collaboration!

```

---
