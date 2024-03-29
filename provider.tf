terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.3"
    }
  }
  backend "s3" {
    bucket  = "ts-infra-team-tfstate"
    key     = "ts1439/terraform.tfstate"
    region  = "ap-northeast-2"
    encrypt = true
  }
}

provider "aws" {
  region = "ap-northeast-2"
  /*
  assume_role {
    role_arn     = "arn:aws:iam::<Account-A>:role/IAM_ROLE_FOR_ASSUME_ROLE"
    session_name = "hompage"
  }
  */
}

#account b
provider "aws" {
  region = "ap-northeast-2"
  alias = "test2"
  assume_role {
    role_arn     = "arn:aws:iam::<Account-B>:role/IAM_ROLE_FOR_ASSUME_ROLE"
    session_name = "test2"
  }
}
