resource "aws_s3_bucket" "some_bucket" {
  bucket = "temp-env0-bucket-poc"
}

resource "aws_s3_bucket_acl" "some_bucket_acl" {
  bucket = aws_s3_bucket.some_bucket.id
  acl    = "private"
}