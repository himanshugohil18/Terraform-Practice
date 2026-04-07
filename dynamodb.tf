resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "him-backend-table"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name        = "him-backend-table"
  }
}