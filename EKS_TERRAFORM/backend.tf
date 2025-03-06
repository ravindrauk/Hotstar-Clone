terraform {
  backend "s3" {
    bucket = "hotstars3bucket97" # Replace with your actual S3 bucket name
    key    = "EKS/terraform.tfstate"
    region = "ap-south-1"
  }
}
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "s3:ListBucket",
      "Resource": "arn:aws:s3:::hotstars3bucket97",
      "Condition": {
        "StringEquals": {
          "s3:prefix": "EKS/terraform.tfstate"
        }
      }
    },
    {
      "Effect": "Allow",
      "Action": ["s3:GetObject", "s3:PutObject"],
      "Resource": [
        "arn:aws:s3:::EKS/terraform.tfstate"
      ]
    },
    {
      "Effect": "Allow",
      "Action": ["s3:GetObject", "s3:PutObject", "s3:DeleteObject"],
      "Resource": [
        "arn:aws:s3:::EKS/terraform.tfstate.tflock"
      ]
    }
  ]
}
