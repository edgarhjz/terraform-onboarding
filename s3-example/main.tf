resource "aws_s3_bucket" "buckets" {
  count =2
  bucket = "${var.bucket[count.index]}"
  acl = "private"
}

variable "bucket" {
  description = "S3 bucket name"
  type = "list"
}

provider "aws" {
  version = "~> 2.0"
  region = "us-east-1"
}

output "bucket_0" {
  value = "${aws_s3_bucket.buckets.*.id[0]}"
}

output "bucket_1" {
  value = "${aws_s3_bucket.buckets.*.id[1]}"
}

output "bucket_names" {
  value = "${aws_s3_bucket.buckets.*.bucket}"
}
