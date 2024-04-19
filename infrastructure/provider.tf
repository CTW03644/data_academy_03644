terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "da7-terraform-state"
    region = "eu-central-1"
    profile = "my_profile_academy_03644"
    key = "terraform-key-03644"
  }
}

# Configure the AWS Provider
provider "aws" {
  region  = "eu-central-1"
  profile = "my_profile_academy_03644"
}