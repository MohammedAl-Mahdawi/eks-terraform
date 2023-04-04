# Terraform Remote State Datasource - Remote Backend AWS S3
# EKS Cluster Project
data "terraform_remote_state" "eks" {
  backend = "s3"
  config = {
    profile = "my"
    bucket = "terraform-on-aws-eks-test"
    key    = "prod/eks/terraform.tfstate"
    region = "eu-central-1"
  }
}
