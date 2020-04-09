# Specify the provider and access details
provider "aws" {
  region = "${var.aws_region}"
}

# Create S3 buckets
resource "aws_s3_bucket" "buckets" {
  count =2
  bucket = "${var.bucket[count.index]}"
  acl = "private"
}

# This config using credentials with environment variables
# AWS_ACCESS_KEY_ID=""
# AWS_SECRET_ACCESS_KEY=""