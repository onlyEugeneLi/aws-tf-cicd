# Create S3 to store terraform state file

# How can I create S3 without error before using it here? 

resource "aws_s3_bucket" "dev_tf_state_s3_backend" {
  bucket = "dev_tf_state_backend"
  versioning {
    enabled = true
  }
  server_side_encryption_configuration {
    rule{
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "dynamodb_table" "statelock" {
  name = "state_lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"
  
  attribute {
    name = "LockID"
    type = "S"
  }
}

# terraform {
#   backend "s3" {
#     bucket = "dev_tf_state_s3_backend"
#     key    = "state"
#     region = "us-east-2"
#     dynamodb_table = "statelock"
#   }
# }
