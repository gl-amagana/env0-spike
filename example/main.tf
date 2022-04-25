resource "aws_s3_bucket" "some_bucket" {
  bucket = "temp-env0-bucket-poc"
}

resource "aws_s3_bucket_acl" "some_bucket_acl" {
  bucket = aws_s3_bucket.some_bucket.id
  acl    = "private"
}

#resource "aws_s3_bucket_versioning" "some_bucket_versioning" {
#  bucket = aws_s3_bucket.some_bucket.id
#
#  versioning_configuration {
#    status = "Enabled"
#  }
#}

#resource "aws_iam_role" "test_role" {
#  name = "test_role"
#
#  # Terraform's "jsonencode" function converts a
#  # Terraform expression result to valid JSON syntax.
#  assume_role_policy = jsonencode({
#    Version   = "2012-10-17"
#    Statement = [
#      {
#        Action    = "sts:AssumeRole"
#        Effect    = "Allow"
#        Sid       = ""
#        Principal = {
#          Service = "ec2.amazonaws.com"
#        }
#      },
#    ]
#  })
#}