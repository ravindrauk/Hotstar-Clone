
terraform {
  backend "s3" {
    bucket = "myhotstarserverbucket"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}
