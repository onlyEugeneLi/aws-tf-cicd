# terraform {
#   backend "s3" {
#     bucket = "dev_tf_state_s3_backend"
#     dynamodb_table = "statelock"
#     key = "global/mystatefile/terraform.tfstate"
#     region = "us-east-2"
#     encrypt = true
#   }
# }


provider "aws" {
  region = var.region
}