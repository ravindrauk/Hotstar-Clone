
terraform {
  backend "s3" {
    bucket = "Myhotstarserverbucket"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}
