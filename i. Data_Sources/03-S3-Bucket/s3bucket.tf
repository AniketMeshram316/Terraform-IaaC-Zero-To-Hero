data "aws_s3_bucket" "existing_bucket" {
  bucket = "staticfrontendbucket"
}

# Get bucket id
output "existing_bucket_name" {
  value = data.aws_s3_bucket.existing_bucket.id
}

# Get bucket arn
output "existing_bucket_arn" {
  value = data.aws_s3_bucket.existing_bucket.arn
}