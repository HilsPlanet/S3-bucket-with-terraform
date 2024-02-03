# creating s3 bucket with Terraform

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

}

provider "aws" {
  region  = "eu-west-2"
  profile = "Terraform"

}


resource "aws_s3_bucket" "test" {
  bucket = "terraform-test-hils-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}