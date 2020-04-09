output "instance_out" {
  value = "${module.compute.instance_out}"
}

# Bucket 1
output "bucket_0" {
  value = "${module.storage.bucket_0}"
}

# Bucket 2
output "bucket_1" {
  value = "${module.storage.bucket_1}"
}

# All buckets
output "bucket_names" {
  value = "${module.storage.bucket_names}"
}