terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket = "hard-way-state-bucket-ardhendu"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
}