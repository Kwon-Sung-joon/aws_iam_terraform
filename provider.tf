terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.3"
    }
  }
  backend "s3" {
    bucket  = "infra-terraform"
    key     = "terraform.tfstate"
    region  = "ap-northeast-2"
    encrypt = true
  }
}
#homepage
provider "aws" {
  region = "ap-northeast-2"
  assume_role {
    role_arn     = "arn:aws:iam::<ACCOUNT-A>:role/IAM_ROLE_FOR_ASSUME_ROLE"
    session_name = "ACCOUNT-A"
  }
}
#air
provider "aws" {
  region = "ap-northeast-2"
  alias = "air"
  assume_role {
    role_arn     = "arn:aws:iam::<ACCOUNT-B>:role/IAM_ROLE_FOR_ASSUME_ROLE"
    session_name = "ACCOUNT-B"
  }
}
