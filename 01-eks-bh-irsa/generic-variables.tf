# Input Variables
# AWS Region
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type        = string
  default     = "eu-central-1"
}
# Environment Variable
variable "environment" {
  description = "Environment Variable used as a prefix"
  type        = string
  default     = "prod"
}
# Business Division
variable "business_divsion" {
  description = "To which business division this Infrastructure belongs"
  type        = string
  default     = "IT"
}

# AWS Profile
variable "aws_profile" {
  description = "AWS Profile"
  type        = string
  default     = "my"
}
