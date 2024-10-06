# Terraform Project - ITI

This repository contains infrastructure code using [Terraform](https://www.terraform.io/), developed as part of an ITI project. Terraform is used to automate and manage infrastructure resources.

## Project Overview

This project demonstrates the creation, management, and provisioning of infrastructure using Terraform. It focuses on building a scalable and secure infrastructure setup. Key resources provisioned include:

- **AWS EC2 Instances**: Provisioned to host applications.
- **AWS VPC**: Created for network isolation and security.
- **Security Groups**: Configured for secure access to instances.
- **S3 Buckets**: For storage and backup purposes.
- **IAM Roles and Policies**: For secure access management.

## Prerequisites

Before running this project, ensure you have the following installed:

- [Terraform](https://www.terraform.io/downloads.html) (v1.x or higher)
- [AWS CLI](https://aws.amazon.com/cli/)
- AWS Account credentials properly configured using `aws configure`
- [Git](https://git-scm.com/) for version control

## Project Structure

```plaintext
.
├── main.tf        # Main Terraform configuration file
├── variables.tf   # Input variables for the Terraform configuration
├── outputs.tf     # Output values from the infrastructure created
├── providers.tf   # Provider-specific configurations (e.g., AWS)
└── README.md      # Project documentation
```

## Getting Started

Follow these steps to deploy the infrastructure using Terraform:

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/MichaelAshrafRefaat/terraform-project-iti.git
   cd terraform-project-iti
   ```

2. **Initialize Terraform**:
   This step downloads the necessary provider plugins.
   ```bash
   terraform init
   ```

3. **Preview the Changes**:
   Run a plan to see what resources will be created or changed:
   ```bash
   terraform plan
   ```

4. **Apply the Configuration**:
   To apply the infrastructure changes, use the following command:
   ```bash
   terraform apply
   ```
   You will be prompted to confirm before applying the changes.

5. **Destroy the Infrastructure**:
   If you want to clean up all the resources created by this project, run:
   ```bash
   terraform destroy
   ```

## Inputs

The `variables.tf` file contains several variables that can be customized. For example:

- `region`: AWS region to deploy resources.
- `instance_type`: The EC2 instance type to be used.
- `bucket_name`: The S3 bucket name for storage.

## Outputs

The `outputs.tf` file defines useful information generated after applying the Terraform configuration, such as:

- EC2 Instance public IP
- VPC ID
- S3 bucket name

## Notes

- Ensure your AWS credentials are configured and have the necessary permissions to create resources.
- Adjust any variable values in `variables.tf` according to your requirements before running the commands.

