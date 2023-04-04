resource "tls_private_key" "eks-terraform-key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "eks-terraform-key" {
  key_name   = var.instance_keypair
  public_key = tls_private_key.eks-terraform-key.public_key_openssh
}

resource "local_file" "eks-terraform-key" {
  content  = tls_private_key.eks-terraform-key.private_key_pem
  filename = "${path.module}/eks-key"
}