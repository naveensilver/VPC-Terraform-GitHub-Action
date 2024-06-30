terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.56.1"
    }
  }

// Create a backend see for the terraform TF State file we are going to store this TF State file in our S3 bucket, so for that we need to create an S3 Bucket
  
  backend "s3" {
    bucket = "my-bucket-aws-s3"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"       # select region 
}

