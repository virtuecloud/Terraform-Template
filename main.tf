resource "aws_s3_bucket" "b" {
  bucket = "nfs90024"
  region = "us-east-2"

  tags = {
    Name        = "Myllkj"
    Environment = "Dev"
  }
}
