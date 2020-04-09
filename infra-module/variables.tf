variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "us-east-1"
}

tags = {
    Name = "EdgarEC2-modules"
  }

  variable "bucket" {
  description = "S3 bucket name"
  type = "list"
}