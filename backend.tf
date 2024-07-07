terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket = "hard-way-state-bucket-ardhendu" # Mention your S3 bucket here to save your infrastructure's state
    key    = "terraform.tfstate" # S3 bucket keys can be longer as well, example, state/terraform-state.tfstate. Choose accordingly.
    region = "us-east-2" 
  }
}
