terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket = "hard-way-state-bucket-ardhendu" # Mention your S3 bucket here to save your infrastructure's state
    key    = "terraform.tfstate"
    region = "us-east-2" 
  }
}
