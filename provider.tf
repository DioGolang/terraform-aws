terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.94.0"
    }
  }
  backend "s3" {
    bucket = "eksbucket-terraform-state-04"
    key    = "terraform/dev/terraform.tfstate"
    region = "us-west-2"
  }
}

provider "aws" {
  region = "us-west-2"
}