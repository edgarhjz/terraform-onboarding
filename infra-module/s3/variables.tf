variable "bucket" {
  description = "S3 bucket name"
  type = "list"
}

# AWS Region
variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "us-east-1"
}