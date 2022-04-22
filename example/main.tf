resource "aws_s3_bucket" "some_bucket" {
  bucket = "temp-env0-bucket-poc"
}

resource "aws_s3_bucket_acl" "some_bucket_acl" {
  bucket = aws_s3_bucket.some_bucket.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "some_bucket_versioning" {
  bucket = aws_s3_bucket.some_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}