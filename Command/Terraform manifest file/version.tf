#You can create a file for the 
1. Provider.tf
# Terraform Settings Block
terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"            # Optional but recommended in production
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default"
  region  = var.aws_region
}


