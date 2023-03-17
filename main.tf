resource "aws_s3_bucket" "b" {
  bucket = "nfs90024"

  tags = {
    Name        = "Myllkj"
    Environment = "Dev"
  }
}
