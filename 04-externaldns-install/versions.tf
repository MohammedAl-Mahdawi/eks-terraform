# Terraform Settings Block
terraform {
  required_version = "~> 1.3.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.12"
    }
    helm = {
      source = "hashicorp/helm"
      #version = "2.5.1"
      version = "~> 2.5"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.11"
    }
  }
  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    profile = "my"
    bucket = "terraform-on-aws-eks-test"
    key    = "prod/externaldns-storage/terraform.tfstate"
    region = "eu-central-1"

    # For State Locking
    dynamodb_table = "externaldns-storage"
  }
}

# Terraform AWS Provider Block
provider "aws" {
  profile = "my"
  region = var.aws_region
}

