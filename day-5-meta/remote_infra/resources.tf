resource "aws_s3_bucket" "my_state_bucket" {
   bucket = "terrabhai-bucket"
        force_destroy = true
}
# backend resources
resource "aws_dynamodb_table" "my_dynamo_table" {
    name = "terrabhai-bucket"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"
    attribute {
        name = "LockID"
        type = "S"
    }
}
