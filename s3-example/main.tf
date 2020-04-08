resource "aws_s3_bucket" "private" {
  count =2
  bucket = "${var.bucket}-${count.index}"
  acl = "private"
}

variable "bucket" {
  description = "S3 bucket name"
  type = string
}

provider "aws" {
  version = "~> 2.0"
}

output "bucket" {
  value = "aws_s3_bucket.private.bucket"
}
