terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.3"
    }
  }
  backend "s3" {
    bucket  = "tidesquare-infra-terraform"
    key     = "terraform.tfstate"
    region  = "ap-northeast-2"
    encrypt = true
  }
}
#homepage
provider "aws" {
  region = "ap-northeast-2"
  assume_role {
    role_arn     = "arn:aws:iam::589566835476:role/IAM_ROLE_FOR_ASSUME_ROLE"
    session_name = "hompage"
  }
}
#air
provider "aws" {
  region = "ap-northeast-2"
  alias = "air"
  assume_role {
    role_arn     = "arn:aws:iam::751732153713:role/IAM_ROLE_FOR_ASSUME_ROLE"
    session_name = "air"
  }
}
#hot
provider "aws" {
  alias  = "hot"
  region = "ap-northeast-2"
  assume_role {
    role_arn     = "arn:aws:iam::298385711329:role/IAM_ROLE_FOR_ASSUME_ROLE"
    session_name = "hot"
  }
}
#comm
provider "aws" {
  alias  = "comm"
  region = "ap-northeast-2"
  assume_role {
    role_arn     = "arn:aws:iam::300846112004:role/IAM_ROLE_FOR_ASSUME_ROLE"
    session_name = "comm"
  }
}
#tna_dev
provider "aws" {
  alias  = "tna_dev"
  region = "ap-northeast-2"
  assume_role {
    role_arn     = "arn:aws:iam::012788139911:role/IAM_ROLE_FOR_ASSUME_ROLE"
    session_name = "tna_dev"
  }
}
#ndc
provider "aws" {
  alias  = "ndc"
  region = "ap-northeast-2"
  assume_role {
    role_arn     = "arn:aws:iam::744690697308:role/IAM_ROLE_FOR_ASSUME_ROLE"
    session_name = "ndc"
  }
}
#dw
provider "aws" {
  alias  = "dw"
  region = "ap-northeast-2"
  assume_role {
    role_arn     = "arn:aws:iam::792931648816:role/IAM_ROLE_FOR_ASSUME_ROLE"
    session_name = "dw"
  }
}
#tna
provider "aws" {
  alias  = "tna"
  region = "ap-northeast-2"
  assume_role {
    role_arn     = "arn:aws:iam::339927058960:role/IAM_ROLE_FOR_ASSUME_ROLE"
    session_name = "tna"
  }
}
#viet
provider "aws" {
  alias  = "viet"
  region = "ap-northeast-2"
  assume_role {
    role_arn     = "arn:aws:iam::836881754257:role/IAM_ROLE_FOR_ASSUME_ROLE"
    session_name = "viet"
  }
}
#dms
provider "aws" {
  alias  = "dms"
  region = "ap-northeast-2"
  assume_role {
    role_arn     = "arn:aws:iam::097345172411:role/IAM_ROLE_FOR_ASSUME_ROLE"
    session_name = "dms"
  }
}