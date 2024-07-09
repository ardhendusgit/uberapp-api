# Environment Setup for Uber App

This repository contains the code and configuration files needed to set up a DevOps environment for deploying and managing the Uber API application stack mentioned in [DevOps-The-Hard-Way-AWS](https://github.com/AdminTurnedDevOps/DevOps-The-Hard-Way-AWS/) repository with some minor changes for minimizing costs.

## Technologies and Platforms

Majority of the steps that are used in the original repository (mentioned above) are taken here as well with some minor changes for minimizing costs. The changes are

### VPC
The VPC instead of being created through an S3 cloudformation template, is created using the official Terraform [module](https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest).

### Terraform
Terraform code has been modified for the following tasks:
- Creating a VPC while disabling the creation of private subnets and consequently, NAT gateways.
- While creating the AWS ECR repository name has to be the one the user creates.
- While creating the EKS cluster, the subnet Id's have to be mentioned
  (I didn't risk automating the usage of subnet id's as they are created but if it suits the user, they should go ahead).

### Prerequisites
- An AWS account with necessary permissions.
- GitHub account.
- Docker installed on your local machine.
- Python installed on your local machine.
- Terraform installed on your local machine.
- Kubernetes CLI (`kubectl`) installed on your local machine.

## Contributions
Contributions are welcome! Please create a pull request with your changes.
