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
  }
}
variable "iam_users" {
  type = map(object({
    user_name  = string
    group_name = set(string)
  }))

  default = {
    TS9999 = {
      user_name  = "TS9999"
      group_name = ["infra_team"]
    }
    TS9991 = {
      user_name  = "TS9991"
      group_name = ["infra_team"]
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
    Infra_Team = {
      policy_name = "mfa_policy"
      policy_path = "/"
      policy_desc = "force mfa policy"
      policy = "template/mfa_policy.json"
      policy_attach_roles = []
      policy_attach_users = []
      policy_attach_groups = ["infra_team"]
    }
  }
}










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
variable "iam_users_air" {
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
variable "iam_policy_air" {
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
variable "iam_users_hot" {
  type = map(object({
    user_name  = string
    group_name = set(string)
  }))

  default = {
    TS8888 = {
      user_name  = "TS8888"
      group_name = ["infra_team"]
    }
  }
}

