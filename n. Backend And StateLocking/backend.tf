resource "aws_s3_bucket" "backend_bucket" {
  bucket = "backend-statefile-bucket"

  tags = {
    Name        = "backend-statefile-bucket"
    Environment = "Development"
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.backend_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "encryption" {
  bucket = aws_s3_bucket.backend_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "AES256"
    }
  }
}

resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "statefile-table"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockId"

  attribute {
    name = "LockId"
    type = "S"
  }

  tags = {
    Name        = "statefile-table"
    Environment = "Development"
  }
}