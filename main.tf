module "iam_groups" {
  source           = "./iam_groups"
  for_each         = var.iam_groups_air
  iam_group_config = each.value
}


module "iam_users_air" {
  source          = "./iam_users"
  for_each        = var.iam_users_air
  iam_user_config = each.value
}

output "iam_name_air" {
  value = {
    for k, account in module.iam_users_air : k => account.account
  }
}


module "iam_users_hot" {
  source          = "./iam_users"
  for_each        = var.iam_users_hot
  iam_user_config = each.value
}

output "iam_name_hot" {
  value = {
    for k, account in module.iam_users_hot : k => account.account
  }
}
