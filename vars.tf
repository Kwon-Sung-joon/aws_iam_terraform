####################################################
#IAM USERS
####################################################
variable "iam_users" {
  type = map(object({
    user_name  = string
    group_name = set(string)
    tag_name = string
  }))
  default = {
  }
}
locals {
  IAM_USERS_HOMEPAGE = {
    USER_A = {
      user_name  = "USER_A"
      group_name = ["DBA"]
      tag_name = "USER_A"
    }
  }
  IAM_USERS_AIR = {
    USER_A = {
      user_name = "USER_A"
      group_name = ["USER_A"]
      tag_name  = "USER_A"
    }
  }
}

####################################################
#IAM GROUPS
####################################################
#account a IAM
variable "iam_groups_account_A" {
  type = map(object({
    group_name = string
    group_path = string
    mgd_policy = set(string)
  }))
  default = {
    infra_team = {
      group_name = "infra_team"
      group_path = "/"
      mgd_policy = ["arn:aws:iam::aws:policy/AdministratorAccess"]
    }
  }

}
#account b IAM
variable "iam_groups_account_B" {
  type = map(object({
    group_name = string
    group_path = string
    mgd_policy = set(string)
  }))

  default = {
    Infra_Team = {
      group_name = "infra_team"
      group_path = "/"
      mgd_policy = ["arn:aws:iam::aws:policy/AmazonAppFlowReadOnlyAccess", "arn:aws:iam::aws:policy/IAMUserChangePassword"]
    }
  }
}

####################################################
#IAM POLICIES
####################################################
variable "iam_policies" {
  type = map(object({
    name = string
    policy = any
    description = string
    tags = any
  }))
  default = {}
}
locals {
  IAM_CUSTOM_POLICY_ACCOUNT_A = {
    IAM_FORCE_MFA_FOR_ACCESS_KEY = {
      name = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      policy = "${path.root}/template/mfa_policy.json"
      description = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      tags = {
        Name = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      }
    }
  }
  IAM_CUSTOM_POLICY_ACCOUNT_B = {
    IAM_FORCE_MFA_FOR_ACCESS_KEY = {
      name = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      policy = "${path.root}/template/mfa_policy.json"
      description = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      tags = {
        Name = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      }
    }
  }

}

####################################################
#IAM USER POLICY ATTACH
####################################################
variable "iam_user_policy_attach" {
  type = map(object({
    name = string
    policy_arn = string
    roles = set(string)
    users = set(string)
    groups = set(string)
  }))
  default = {}
}
locals {
  IAM_CUSTOM_POLICY_ATTACH_ACCOUNT_A = {
    IAM_FORCE_MFA_FOR_ACCESS_KEY_ATTACH = {
      name = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      policy_arn = module.iam_custom_policy["IAM_FORCE_MFA_FOR_ACCESS_KEY"].policy_arn
      roles= []
      users = []
      groups = ["infra_team"]
    }
  }
  IAM_CUSTOM_POLICY_ATTACH_ACCOUNT_B = {
    IAM_FORCE_MFA_FOR_ACCESS_KEY_ATTACH = {
      name = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      policy_arn = module.iam_custom_policy_air["IAM_FORCE_MFA_FOR_ACCESS_KEY"].policy_arn
      roles= []
      users = ["USER_A"]
      groups = []
    }

  }

}
####################################################
#IAM ROLES
####################################################
variable "iam_roles"{
  type=map(object({
    name=any
    tags=any
    assume_role_policy = any
    mgd_policies = set(string)
  }))
  default = {}
}
locals {
  IAM_ROLE_ACCOUNT_A = {
    IAM_ROLE_FOR_READ_ASSUME = {
      name = "IAM_ROLE_FOR_READ_ASSUME"
      tags = {
        Name = "IAM_ROLE_FOR_READ_ASSUME"
      }
      assume_role_policy = data.aws_iam_policy_document.assume_role_for_read_only.json
      mgd_policies       = ["arn:aws:iam::aws:policy/ReadOnlyAccess"]
    }
  }
  IAM_ROLE_ACCOUNT_B = {
    IAM_ROLE_SCHEDULER = {
      name = "IAM_ROLE_SCHEDULER"
      tags = {
        Name = "IAM_ROLE_SCHEDULER"
      }
      assume_role_policy = data.aws_iam_policy_document.ec2_scheduler_role.json
      mgd_policies       = ["arn:aws:iam::aws:policy/AmazonEC2FullAccess"]
    }
    IAM_ROLE_FOR_READ_ASSUME = {
      name = "IAM_ROLE_FOR_READ_ASSUME"
      tags = {
        Name = "IAM_ROLE_FOR_READ_ASSUME"
      }
      assume_role_policy = data.aws_iam_policy_document.assume_role_for_read_only.json
      mgd_policies       = ["arn:aws:iam::aws:policy/ReadOnlyAccess"]
    }
  }
}
