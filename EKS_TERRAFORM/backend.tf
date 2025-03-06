
terraform {
  backend "s3" {
    bucket = "myhotstarserverbucket"
    key    = "EKS/terraform.tfstate"
    region = "us-east-1"
  }
}
