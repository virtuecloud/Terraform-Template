resource "aws_s3_bucket" "b" {
  bucket = "nfs90024"
  region = "us-east-1"

  tags = {
    Name        = "Myllkj"
    Environment = "Dev"
  }
}
