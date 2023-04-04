# Terraform Settings Block
terraform {
  required_version = "~> 1.3.4"
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.1"
    }
  }
  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    profile = "my"
    bucket = "terraform-on-aws-eks-test"
    key    = "prod/eks-vpa/terraform.tfstate"
    region = "eu-central-1"

    # For State Locking
    dynamodb_table = "eks-vpa"
  }
}

provider "null" {
  # Configuration options
}
