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
    TS1520 = {
      user_name  = "TS1520"
      group_name = ["DBA"]
      tag_name = "WEEDH"
    }
  }
  IAM_USERS_AIR = {
    TS1520 = {
      user_name  = "TS1520"
      group_name = ["DBA"]
      tag_name = "WEEDH"
    }
    TS1180 = {
      user_name  = "TS1180"
      group_name = ["admin"]
      tag_name = "KWONMS"
    }
  }
  IAM_USERS_HOT = {
    TS1520 = {
      user_name  = "TS1520"
      group_name = ["DBA"]
      tag_name = "WEEDH"

    }
    TS0981 = {
      user_name  = "TS0981"
      group_name = ["developer"]
      tag_name = "JEONHJ"
    }
    TS0984 = {
      user_name  = "TS0984"
      group_name = ["developer"]
      tag_name = "KIMJY"
    }
    TS1097 = {
      user_name  = "TS1097"
      group_name = ["developer"]
      tag_name = "LEEJH"
    }
    TS1298 = {
      user_name  = "TS1298"
      group_name = ["developer"]
      tag_name = "KIMHK"
    }
  }
  IAM_USERS_COMM = {
    TS1520 = {
      user_name  = "TS1520"
      group_name = ["DBA"]
      tag_name = "WEEDH"
    }
    TS1168 = {
      user_name  = "TS1168"
      group_name = ["admin"]
      tag_name = "LEECG"
    }
    TS1180 = {
      user_name  = "TS1180"
      group_name = ["admin"]
      tag_name = "KWONMS"
    }
  }
  IAM_USERS_NDC = {
    TS1520 = {
      user_name  = "TS1520"
      group_name = ["DBA"]
      tag_name = "WEEDH"
    }
  }
  IAM_USERS_TNA = {
    TS1520 = {
      user_name  = "TS1520"
      group_name = ["DB"]
      tag_name = "WEEDH"
    }
    TS0989 = {
      #hj nam
      user_name  = "TS0989"
      group_name = ["INFRA_TEAM"]
      tag_name = "NAMHJ"
    }
    TS0991 = {
      #os kwon
      user_name  = "TS0991"
      group_name = ["INFRA_TEAM"]
      tag_name = "KWONOS"
    }
    TS1198 = {
      #gh kwon
      user_name  = "TS1198"
      group_name = ["INFRA_TEAM"]
      tag_name = "KWONGH"
    }
    TS1164 = {
      #gb cho
      user_name  = "TS1164"
      group_name = ["INFRA_TEAM"]
      tag_name = "CHOGB"
    }
    TS0981 = {
      #hj jeon
      user_name  = "TS0981"
      group_name = ["Admin"]
      tag_name = "JEONHJ"
    }
    TS0984 = {
      #KIMJY
      user_name  = "TS0984"
      group_name = ["Admin_developers"]
      tag_name = "KIMJY"
    }
    TS1097 = {
      #LEEJH
      user_name  = "TS1097"
      group_name = ["Admin_developers"]
      tag_name = "LEEJH"
    }
    TS0988 = {
      #KIMHG0815
      user_name  = "TS0988"
      group_name = ["Admin_developers"]
      tag_name = "KIMHG0815"
    }
  }
  IAM_USERS_TNA_DEV = {
    TS1520 = {
      user_name  = "TS1520"
      group_name = ["DBA"]
      tag_name = "WEEDH"
    }
  }
  IAM_USERS_DW = {
    TS1520 = {
      user_name  = "TS1520"
      group_name = ["DBA"]
      tag_name = "WEEDH"
    }
  }
  IAM_USERS_DMS = {
    TS1520 = {
      user_name  = "TS1520"
      group_name = ["DBA"]
      tag_name = "WEEDH"
    }
  }
  IAM_USERS_VIET = {
    TS1520 = {
      user_name  = "TS1520"
      group_name = ["DBA"]
      tag_name = "WEEDH"
    }
  }
}

####################################################
#IAM GROUPS
####################################################
#HOMEPAGE IAM
variable "iam_groups_homepage" {
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
#AIR IAM
variable "iam_groups_air" {
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
#HOT IAM
variable "iam_groups_hot" {
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
#comm IAM
variable "iam_groups_comm" {
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
#tna_dev IAM
variable "iam_groups_tna_dev" {
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
#NDC IAM
variable "iam_groups_ndc" {
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
#dw IAM
variable "iam_groups_dw" {
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
#tna IAM
variable "iam_groups_tna" {
  type = map(object({
    group_name = string
    group_path = string
    mgd_policy = set(string)
  }))
  default = {
    Infra_Team = {
      group_name = "INFRA_TEAM"
      group_path = "/"
      mgd_policy = ["arn:aws:iam::aws:policy/ReadOnlyAccess", "arn:aws:iam::aws:policy/IAMUserChangePassword","arn:aws:iam::aws:policy/AmazonSSMFullAccess"]
    }
    Admin_developers = {
      group_name = "Admin_developers"
      group_path = "/"
      mgd_policy = ["arn:aws:iam::aws:policy/AdministratorAccess"]
    }
  }
}
#viet IAM
variable "iam_groups_viet" {
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
#dms IAM
variable "iam_groups_dms" {
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
  IAM_CUSTOM_POLICY = {
    IAM_FORCE_MFA_FOR_ACCESS_KEY = {
      name = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      policy = "${path.root}/template/mfa_policy.json"
      description = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      tags = {
        Name = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      }
    }
  }
  IAM_CUSTOM_POLICY_AIR = {
    IAM_FORCE_MFA_FOR_ACCESS_KEY = {
      name = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      policy = "${path.root}/template/mfa_policy.json"
      description = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      tags = {
        Name = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      }
    }
  }
  IAM_CUSTOM_POLICY_HOT = {
    IAM_FORCE_MFA_FOR_ACCESS_KEY = {
      name = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      policy = "${path.root}/template/mfa_policy.json"
      description = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      tags = {
        Name = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      }
    }

  }
  IAM_CUSTOM_POLICY_KONG = {
    IAM_FORCE_MFA_FOR_ACCESS_KEY = {
      name = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      policy = "${path.root}/template/mfa_policy.json"
      description = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      tags = {
        Name = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      }
    }
    IAM_POLICY_RDS_SCHEDULER = {
      name = "IAM_POLICY_RDS_SCHEDULER"
      policy = "${path.root}/template/RDS_Scheduler_policy.json"
      description = "IAM_POLICY_RDS_SCHEDULER"
      tags = {
        Name = "IAM_POLICY_RDS_SCHEDULER"
      }
    }
  }
  IAM_CUSTOM_POLICY_TNA = {
    IAM_FORCE_MFA_FOR_ACCESS_KEY = {
      name = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      policy = "${path.root}/template/mfa_policy.json"
      description = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      tags = {
        Name = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      }
    }
  }
  IAM_CUSTOM_POLICY_NDC = {
    IAM_FORCE_MFA_FOR_ACCESS_KEY = {
      name = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      policy = "${path.root}/template/mfa_policy.json"
      description = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      tags = {
        Name = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      }
    }

    IAM_DBA_POLICY = {
      name = "IAM_DBA_POLICY"
      policy = "${path.root}/template/dba_policy.json"
      description = "IAM_DBA_POLICY"
      tags = {
        Name = "IAM_DBA_POLICY"
      }
    }

  }
  IAM_CUSTOM_POLICY_VIET = {
    IAM_FORCE_MFA_FOR_ACCESS_KEY = {
      name = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      policy = "${path.root}/template/mfa_policy.json"
      description = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      tags = {
        Name = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      }
    }
    IAM_DBA_POLICY = {
      name = "IAM_DBA_POLICY"
      policy = "${path.root}/template/dba_policy.json"
      description = "IAM_DBA_POLICY"
      tags = {
        Name = "IAM_DBA_POLICY"
      }
    }
  }
  IAM_CUSTOM_POLICY_DMS = {
    IAM_FORCE_MFA_FOR_ACCESS_KEY = {
      name = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      policy = "${path.root}/template/mfa_policy.json"
      description = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      tags = {
        Name = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      }
    }
  }
  IAM_CUSTOM_POLICY_DW = {
    IAM_FORCE_MFA_FOR_ACCESS_KEY = {
      name = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      policy = "${path.root}/template/mfa_policy.json"
      description = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      tags = {
        Name = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      }
    }
  }
  IAM_CUSTOM_POLICY_TNA_DEV = {
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
  IAM_CUSTOM_POLICY_ATTACH = {
    IAM_FORCE_MFA_FOR_ACCESS_KEY_ATTACH = {
      name = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      policy_arn = module.iam_custom_policy["IAM_FORCE_MFA_FOR_ACCESS_KEY"].policy_arn
      roles= []
      users = []
      groups = ["infra_team"]
    }
  }
  IAM_CUSTOM_POLICY_ATTACH_AIR = {
    IAM_FORCE_MFA_FOR_ACCESS_KEY_ATTACH = {
      name = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      policy_arn = module.iam_custom_policy_air["IAM_FORCE_MFA_FOR_ACCESS_KEY"].policy_arn
      roles= []
      users = ["TS1439","TS1180"]
      groups = []
    }

  }
  IAM_CUSTOM_POLICY_ATTACH_HOT = {
    IAM_FORCE_MFA_FOR_ACCESS_KEY_ATTACH = {
      name = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      policy_arn = module.iam_custom_policy_hot["IAM_FORCE_MFA_FOR_ACCESS_KEY"].policy_arn
      roles= []
      users = ["TS1003"]
      groups = []
    }
  }
  IAM_CUSTOM_POLICY_ATTACH_KONG = {
    IAM_FORCE_MFA_FOR_ACCESS_KEY_ATTACH = {
      name = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      policy_arn = module.iam_custom_policy_comm["IAM_FORCE_MFA_FOR_ACCESS_KEY"].policy_arn
      roles= []
      users = []
      groups = ["admin"]
    }
  }
  IAM_CUSTOM_POLICY_ATTACH_TNA = {
    IAM_FORCE_MFA_FOR_ACCESS_KEY_ATTACH = {
      name = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      policy_arn = module.iam_custom_policy_tna["IAM_FORCE_MFA_FOR_ACCESS_KEY"].policy_arn
      roles= []
      users = ["dmlim","dudals8937","jcyoon","ts1180"]
      groups = ["Admin_developers"]
    }
  }
  IAM_CUSTOM_POLICY_ATTACH_NDC = {
    IAM_FORCE_MFA_FOR_ACCESS_KEY_ATTACH = {
      name = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      policy_arn = module.iam_custom_policy_ndc["IAM_FORCE_MFA_FOR_ACCESS_KEY"].policy_arn
      roles= []
      users = ["TS1010","TS1321.Terraform","TS1484.Terraform"]
      groups = []
    }
    IAM_DBA_POLICY = {
      name = "IAM_DBA_POLICY"
      policy_arn = module.iam_custom_policy_ndc["IAM_DBA_POLICY"].policy_arn
      roles= []
      users = []
      groups = ["DBA"]
    }
  }
  IAM_CUSTOM_POLICY_ATTACH_DW = {
    IAM_FORCE_MFA_FOR_ACCESS_KEY_ATTACH = {
      name = "IAM_FORCE_MFA_FOR_ACCESS_KEY"
      policy_arn = module.iam_custom_policy_dw["IAM_FORCE_MFA_FOR_ACCESS_KEY"].policy_arn
      roles= []
      users = ["TS1384","TS1410"]
      groups = []
    }
  }
  IAM_CUSTOM_POLICY_ATTACH_VIET = {
    IAM_DBA_POLICY = {
      name = "IAM_DBA_POLICY"
      policy_arn = module.iam_custom_policy_viet["IAM_DBA_POLICY"].policy_arn
      roles= []
      users = []
      groups = ["DBA"]
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
  IAM_ROLE_HOMEPAGE = {
    IAM_ROLE_FOR_READ_ASSUME = {
      name = "IAM_ROLE_FOR_READ_ASSUME"
      tags = {
        Name = "IAM_ROLE_FOR_READ_ASSUME"
      }
      assume_role_policy = data.aws_iam_policy_document.assume_role_for_read_only.json
      mgd_policies       = ["arn:aws:iam::aws:policy/ReadOnlyAccess"]
    }
  }
  IAM_ROLE_AIR = {
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
  IAM_ROLE_HOT = {
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
  IAM_ROLE_KONG = {
    IAM_ROLE_SCHEDULER = {
      name = "IAM_ROLE_SCHEDULER"
      tags = {
        Name = "IAM_ROLE_SCHEDULER"
      }
      assume_role_policy = data.aws_iam_policy_document.ec2_scheduler_role.json
      mgd_policies       = ["arn:aws:iam::aws:policy/AmazonEC2FullAccess"
      ,module.iam_custom_policy_comm["IAM_POLICY_RDS_SCHEDULER"].policy_arn]
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
  IAM_ROLE_NDC = {
    IAM_ROLE_FOR_READ_ASSUME = {
      name = "IAM_ROLE_FOR_READ_ASSUME"
      tags = {
        Name = "IAM_ROLE_FOR_READ_ASSUME"
      }
      assume_role_policy = data.aws_iam_policy_document.assume_role_for_read_only.json
      mgd_policies       = ["arn:aws:iam::aws:policy/ReadOnlyAccess"]
    }
  }
  IAM_ROLE_TNA = {
    IAM_ROLE_SCHEDULER = {
      name = "IAM_ROLE_SCHEDULER"
      tags = {
        Name = "IAM_ROLE_SCHEDULER"
      }
      assume_role_policy = data.aws_iam_policy_document.ec2_scheduler_role.json
      mgd_policies       = ["arn:aws:iam::aws:policy/AmazonEC2FullAccess"
      ]
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
  IAM_ROLE_TNA_DEV = {
    IAM_ROLE_FOR_READ_ASSUME = {
      name = "IAM_ROLE_FOR_READ_ASSUME"
      tags = {
        Name = "IAM_ROLE_FOR_READ_ASSUME"
      }
      assume_role_policy = data.aws_iam_policy_document.assume_role_for_read_only.json
      mgd_policies       = ["arn:aws:iam::aws:policy/ReadOnlyAccess"]
    }
  }
  IAM_ROLE_DW = {
    IAM_ROLE_FOR_READ_ASSUME = {
      name = "IAM_ROLE_FOR_READ_ASSUME"
      tags = {
        Name = "IAM_ROLE_FOR_READ_ASSUME"
      }
      assume_role_policy = data.aws_iam_policy_document.assume_role_for_read_only.json
      mgd_policies       = ["arn:aws:iam::aws:policy/ReadOnlyAccess"]
    }
  }
  IAM_ROLE_DMS = {
    IAM_ROLE_FOR_READ_ASSUME = {
      name = "IAM_ROLE_FOR_READ_ASSUME"
      tags = {
        Name = "IAM_ROLE_FOR_READ_ASSUME"
      }
      assume_role_policy = data.aws_iam_policy_document.assume_role_for_read_only.json
      mgd_policies       = ["arn:aws:iam::aws:policy/ReadOnlyAccess"]
    }
  }
  IAM_ROLE_VIET = {
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
