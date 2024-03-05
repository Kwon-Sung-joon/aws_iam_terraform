terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.3"
    }
  }
  backend "s3" {
    bucket  = "ksj-tf-state"
    key     = "KSJ_TERRAFORM_IAM/terraform.tfstate"
    region  = "ap-northeast-2"
    encrypt = true
  }
}

provider "aws" {
  region = "ap-northeast-2"
}