# Terraform Settings Block
terraform {
  required_version = "~> 1.3.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    profile = "my"
    bucket  = "terraform-on-aws-eks-test"
    key     = "prod/eks/terraform.tfstate"
    region  = "eu-central-1"

    # For State Locking
    dynamodb_table = "eks"
  }
}

# Terraform Provider Block
provider "aws" {
  region  = var.aws_region
  profile = "my"
}
