output "instance_out" {
  value = "${module.compute.aws_region}"
}

# Bucket 1
output "bucket_0" {
  value = "${module.storage.id[0]}"
}

# Bucket 2
output "bucket_1" {
  value = "${module.storage.id[1]}"
}

# All buckets
output "bucket_names" {
  value = "${module.storage.bucket}"
}