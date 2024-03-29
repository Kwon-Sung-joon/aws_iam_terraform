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

/*
#create using assume role
module "iam_users_test2" {
  providers = {aws=aws.test2}
  source          = "./iam_users"
  for_each        = var.iam_users_test2
  iam_user_config = each.value
  #depends_on = [module.iam_groups]
}
output "iam_name_test2" {
  value = {
    for k, account in module.iam_users_test2 : k => account.account
  }
}
*/