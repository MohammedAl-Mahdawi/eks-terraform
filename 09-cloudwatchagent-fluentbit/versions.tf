# Terraform Settings Block
terraform {
  required_version = "~> 1.3.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.14"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.11"
    }
    http = {
      source  = "hashicorp/http"
      version = "~> 2.1"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "1.14.0"
    }
  }
  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    profile = "my"
    bucket = "terraform-on-aws-eks-test"
    key    = "prod/eks-cloudwatch-agent/terraform.tfstate"
    region = "eu-central-1"

    # For State Locking
    dynamodb_table = "eks-cloudwatch-agent"
  }
}

