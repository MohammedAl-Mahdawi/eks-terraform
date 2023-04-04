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
    bucket = "terraform-on-aws-eks-test"
    key    = "prod/ebs-addon/terraform.tfstate"
    region = "eu-central-1"

    # For State Locking
    dynamodb_table = "ebs-addon"
  }
}

# Terraform AWS Provider Block
provider "aws" {
  profile = "my"
  region = var.aws_region
}
