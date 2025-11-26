terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-terraform-demo-bucket-12345-vinoth932025"   # must be globally unique

  tags = {
    Name        = "MyTerraformS3Bucket"
    Environment = "Dev"
  }
}
