# Terraform Settings Block
terraform {
  required_version = "~> 1.3.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.13"
    }
    helm = {
      source = "hashicorp/helm"
      #version = "2.5.1"
      version = "~> 2.5"
    }
    http = {
      source = "hashicorp/http"
      #version = "2.1.0"
      version = "~> 2.1"
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
    key    = "prod/efs-csi/terraform.tfstate"
    region = "eu-central-1"

    # For State Locking
    dynamodb_table = "efs-csi"
  }
}

# Terraform AWS Provider Block
provider "aws" {
  profile = "my"
  region = var.aws_region
}

# Terraform HTTP Provider Block
provider "http" {
  # Configuration options
}
