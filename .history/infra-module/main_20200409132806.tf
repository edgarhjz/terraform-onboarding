# Specify the provider and access details
provider "aws" {
  region = "${var.aws_region}"
}

# Create a new instance of the latest Ubuntu 14.04 on an
# t2.micro node with an AWS Tag naming it "EdgarEC2-modules"
module "compute" {
  source = "./ec2"
}

module "storage" {
  source = "./s3"
  bucket = "${var.bucket}"
}