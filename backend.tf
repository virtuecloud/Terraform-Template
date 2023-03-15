terraform {
  backend "s3" {
    bucket = "example-bucket"                                 # name of the bucket in which you want to store the state
    key    = "terraform.tfstate"                              
    region = "us-east-1"                                      # region where your bucket is
  }
}
