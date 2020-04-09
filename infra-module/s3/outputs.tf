# Bucket 1
output "bucket_0" {
  value = "${aws_s3_bucket.buckets.*.id[0]}"
}

# Bucket 2
output "bucket_1" {
  value = "${aws_s3_bucket.buckets.*.id[1]}"
}

# All buckets
output "bucket_names" {
  value = "${aws_s3_bucket.buckets.*.bucket}"
}