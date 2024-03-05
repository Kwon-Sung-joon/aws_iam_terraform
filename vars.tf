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

