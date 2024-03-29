variable "iam_groups" {
  type = map(object({
    group_name = string
    group_path = string
    mgd_policy = set(string)
  }))
  default = {
    Infra_Team = {
      group_name = "infra_team"
      group_path = "/"
      mgd_policy = ["arn:aws:iam::aws:policy/AdministratorAccess"]
    }
    DBA_Team = {
      group_name = "dba"
      group_path = "/"
      mgd_policy = ["arn:aws:iam::aws:policy/job-function/DatabaseAdministrator"]
    }
  }
}
variable "iam_users" {
  type = map(object({
    user_name  = string
    group_name = set(string)
  }))
  default = {
    TS0989 = {
      #hj nam
      user_name  = "TS0989"
      group_name = ["infra_team"]
    }
    TS0991 = {
      #os kwon
      user_name  = "TS0991"
      group_name = ["infra_team"]
    }
    TS1147 = {
      #ji shin
      user_name  = "TS1147"
      group_name = ["infra_team"]
    }
    TS1198 = {
      #gh kwon
      user_name  = "TS1198"
      group_name = ["infra_team"]
    }
    TS1405 = {
      #ys kim
      user_name  = "TS1405"
      group_name = ["dba"]
    }

  }
}
variable "iam_policy" {
  type = map(object({
    policy_name = string
    policy_path = string
    policy_desc = string
    policy = any
    policy_attach_roles = set(string)
    policy_attach_users = set(string)
    policy_attach_groups = set(string)
  }))
  default = {
    MFA_POLICY = {
      policy_name = "mfa_policy"
      policy_path = "/"
      policy_desc = "force mfa policy"
      policy = "template/mfa_policy.json"
      policy_attach_roles = []
      policy_attach_users = []
      policy_attach_groups = ["infra_team","dba"]
    },
    DBA_POLICY = {
      policy_name = "dba_policy"
      policy_path = "/"
      policy_desc = "dba policy"
      policy = "template/dba_policy.json"
      policy_attach_roles = []
      policy_attach_users = []
      policy_attach_groups = ["dba"]
    }
  }
}


variable "iam_groups_test2" {
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
variable "iam_users_test2" {
  type = map(object({
    user_name  = string
    group_name = set(string)
  }))

  default = {
    TS9999 = {
      user_name  = "TS9999"
      group_name = ["infra_team"]
    }
  }
}
variable "iam_policy_test2" {
  type = map(object({
    policy_name = string
    policy_path = string
    policy_desc = string
    policy = any
    policy_attach_roles = set(string)
    policy_attach_users = set(string)
    policy_attach_groups = set(string)
  }))
  default = {
    Infra_Team = {
      policy_name = "mfa_policy"
      policy_path = "/"
      policy_desc = "force mfa policy"
      policy = "template/mfa_policy.json"
      policy_attach_roles = []
      policy_attach_users = []
      policy_attach_groups = ["test"]
    }
  }
}


