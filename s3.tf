resource "aws_s3_bucket" "mybucket" {
  bucket_prefix = "kranhi-s3-bucket"
  acl    = "private"
  versioning { enabled = true }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}
