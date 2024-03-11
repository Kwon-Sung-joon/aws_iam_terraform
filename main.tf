module "iam_groups" {
  source           = "./iam_groups"
  for_each         = var.iam_groups
  iam_group_config = each.value
}
module "iam_users" {
  source          = "./iam_users"
  for_each        = var.iam_users
  iam_user_config = each.value
  depends_on = [module.iam_groups]
}
output "iam_name" {
  value = {
    for k, account in module.iam_users : k => account.account
  }
}
module "iam_policy" {
  source  = "./iam_policy"
  for_each = var.iam_policy
  iam_policy_config = each.value
  depends_on = [module.iam_groups]
}

#module "iam_policy_air" {
#  source  = "./iam_policy"
#  for_each = var.iam_policy_air
#  iam_policy_config = each.value
#}
#module "iam_groups_air" {
#  source           = "./iam_groups"
#  for_each         = var.iam_groups_air
#  iam_group_config = each.value
#}
#module "iam_users_air" {
#  source          = "./iam_users"
#  for_each        = var.iam_users_air
#  iam_user_config = each.value
#}
#output "iam_name_air" {
#  value = {
#    for k, account in module.iam_users_air : k => account.account
#  }
#}
#
#module "iam_users_hot" {
#  source          = "./iam_users"
#  for_each        = var.iam_users_hot
#  iam_user_config = each.value
#}
#
#output "iam_name_hot" {
#  value = {
#    for k, account in module.iam_users_hot : k => account.account
#  }
#}
