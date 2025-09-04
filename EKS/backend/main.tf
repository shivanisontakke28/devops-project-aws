provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "demo-eks-state-bucket-opentelemetry-12345"

  lifecycle {
    prevent_destroy = false
  }
}

resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "demo-eks-state-lock-table-opentelemetry-12345"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"


  attribute {
    name = "LockID"
    type = "S"
  }
}

