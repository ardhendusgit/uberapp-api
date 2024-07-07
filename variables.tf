variable "ecr_repo" {
  description = "Name of the ECR repo"
  type        = string
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-2"
}

# Mention the subnet ID's of the subnets created by your VPC

variable "subnet_id_1" {
  type = string
  default = "subnet-08a0c7d54b4ff50b2"
}

variable "subnet_id_2" {
  type = string
  default = "subnet-0b75d8415098c4c5e"
}

