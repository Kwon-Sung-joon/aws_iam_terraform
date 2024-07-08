###################################
#homepage account
###################################
module "iam_groups" {
  source           = "./iam_groups"
  for_each         = var.iam_groups_homepage
  iam_group_config = each.value
}

module "iam_users" {
  source          = "./iam_users"
  for_each        = merge(var.iam_users,local.IAM_USERS_HOMEPAGE)
  iam_user_config = each.value
  #depends_on = [module.iam_groups]
}
output "iam_name_homepage" {
  value = {
    for k, account in module.iam_users : k => account.account
  }
}
module "iam_role_homepage" {
  source             = "./iam_role"
  for_each = merge(var.iam_roles,local.IAM_ROLE_HOMEPAGE)
  iam_role_config = each.value
}
module "iam_custom_policy" {
  source            = "./iam_policy_for_role"
  for_each          = merge(var.iam_policies, local.IAM_CUSTOM_POLICY)
  iam_policy_config = each.value
}

module "iam_policy_attach" {
  source            = "./iam_policy_attach"
  for_each          = merge(var.iam_user_policy_attach, local.IAM_CUSTOM_POLICY_ATTACH)
  iam_policy_config = each.value
}



###################################
#air account
###################################
module "iam_users_air" {
  providers = {aws=aws.air}
  source          = "./iam_users"
  for_each        = merge(var.iam_users,local.IAM_USERS_AIR)
  iam_user_config = each.value
}
output "iam_name_air" {
  value = {
    for k, account in module.iam_users_air : k => account.account
  }
}
module "iam_role_air" {
  providers = {aws=aws.air}
  source             = "./iam_role"
  for_each = merge(var.iam_roles,local.IAM_ROLE_AIR)
  iam_role_config = each.value
}

module "iam_custom_policy_air" {
  providers = {aws=aws.air}
  source            = "./iam_policy_for_role"
  for_each          = merge(var.iam_policies, local.IAM_CUSTOM_POLICY_AIR)
  iam_policy_config = each.value
}

module "iam_policy_attach_air" {
  providers = {aws=aws.air}
  source            = "./iam_policy_attach"
  for_each          = merge(var.iam_user_policy_attach, local.IAM_CUSTOM_POLICY_ATTACH_AIR)
  iam_policy_config = each.value
}


###################################
#hot account
###################################
module "iam_users_hot" {
  providers = {aws=aws.hot}
  source          = "./iam_users"
  for_each        = merge(var.iam_users,local.IAM_USERS_HOT)
  iam_user_config = each.value
}
output "iam_name_hot" {
  value = {
    for k, account in module.iam_users_hot : k => account.account
  }
}

module "iam_role_hot" {
  providers = {aws=aws.hot}
  source             = "./iam_role"
  for_each = merge(var.iam_roles,local.IAM_ROLE_HOT)
  iam_role_config = each.value
}


module "iam_custom_policy_hot" {
  providers = {aws=aws.hot}
  source            = "./iam_policy_for_role"
  for_each          = merge(var.iam_policies, local.IAM_CUSTOM_POLICY_HOT)
  iam_policy_config = each.value
}

module "iam_policy_attach_hot" {
  providers = {aws=aws.hot}
  source            = "./iam_policy_attach"
  for_each          = merge(var.iam_user_policy_attach, local.IAM_CUSTOM_POLICY_ATTACH_HOT)
  iam_policy_config = each.value
}

###################################
#comm account
###################################

module "iam_users_comm" {
  providers = {aws=aws.comm}
  source          = "./iam_users"
  for_each        = merge(var.iam_users,local.IAM_USERS_COMM)
  iam_user_config = each.value
}
output "iam_name_comm" {
  value = {
    for k, account in module.iam_users_comm : k => account.account
  }
}
module "iam_role_comm" {
  providers = {aws=aws.comm}
  source             = "./iam_role"
  for_each = merge(var.iam_roles,local.IAM_ROLE_KONG)
  iam_role_config = each.value
}

module "iam_custom_policy_comm" {
  providers = {aws=aws.comm}
  source            = "./iam_policy_for_role"
  for_each          = merge(var.iam_policies, local.IAM_CUSTOM_POLICY_KONG)
  iam_policy_config = each.value
}

module "iam_policy_attach_comm" {
  providers = {aws=aws.comm}
  source            = "./iam_policy_attach"
  for_each          = merge(var.iam_user_policy_attach, local.IAM_CUSTOM_POLICY_ATTACH_KONG)
  iam_policy_config = each.value
}


###################################
#tna_dev account
###################################
module "iam_users_tna_dev" {
  providers = {aws=aws.tna_dev}
  source          = "./iam_users"
  for_each        = merge(var.iam_users,local.IAM_USERS_TNA_DEV)
  iam_user_config = each.value
}
output "iam_name_tna_dev" {
  value = {
    for k, account in module.iam_users_tna_dev : k => account.account
  }
}

module "iam_role_tna_dev" {
  providers = {aws=aws.tna_dev}
  source             = "./iam_role"
  for_each = merge(var.iam_roles,local.IAM_ROLE_TNA_DEV)
  iam_role_config = each.value
}
module "iam_custom_policy_tna_dev" {
  providers = {aws=aws.tna_dev}
  source            = "./iam_policy_for_role"
  for_each          = merge(var.iam_policies, local.IAM_CUSTOM_POLICY_TNA_DEV)
  iam_policy_config = each.value
}

###################################
#ndc account
###################################
module "iam_users_ndc" {
  providers = {aws=aws.ndc}
  source          = "./iam_users"
  for_each        = merge(var.iam_users,local.IAM_USERS_NDC)
  iam_user_config = each.value
}
output "iam_name_ndc" {
  value = {
    for k, account in module.iam_users_ndc : k => account.account
  }
}

module "iam_role_ndc" {
  providers = {aws=aws.ndc}
  source             = "./iam_role"
  for_each = merge(var.iam_roles,local.IAM_ROLE_NDC)
  iam_role_config = each.value
}
module "iam_custom_policy_ndc" {
  providers = {aws=aws.ndc}
  source            = "./iam_policy_for_role"
  for_each          = merge(var.iam_policies, local.IAM_CUSTOM_POLICY_NDC)
  iam_policy_config = each.value
}

module "iam_policy_attach_ndc" {
  providers = {aws=aws.ndc}
  source            = "./iam_policy_attach"
  for_each          = merge(var.iam_user_policy_attach, local.IAM_CUSTOM_POLICY_ATTACH_NDC)
  iam_policy_config = each.value
}

###################################
#dw account
###################################
module "iam_users_dw" {
  providers = {aws=aws.dw}
  source          = "./iam_users"
  for_each        = merge(var.iam_users,local.IAM_USERS_DW)
  iam_user_config = each.value
}
output "iam_name_dw" {
  value = {
    for k, account in module.iam_users_dw : k => account.account
  }
}

module "iam_role_dw" {
  providers = {aws=aws.dw}
  source             = "./iam_role"
  for_each = merge(var.iam_roles,local.IAM_ROLE_DW)
  iam_role_config = each.value
}

module "iam_custom_policy_dw" {
  providers = {aws=aws.dw}
  source            = "./iam_policy_for_role"
  for_each          = merge(var.iam_policies, local.IAM_CUSTOM_POLICY_DW)
  iam_policy_config = each.value
}

module "iam_policy_attach_dw" {
  providers = {aws=aws.dw}
  source            = "./iam_policy_attach"
  for_each          = merge(var.iam_user_policy_attach, local.IAM_CUSTOM_POLICY_ATTACH_DW)
  iam_policy_config = each.value
}


###################################
#tna account
###################################
module "iam_groups_tna" {
  providers = {aws=aws.tna}
  source = "./iam_groups"
  for_each = var.iam_groups_tna
  iam_group_config = each.value
}

module "iam_users_tna" {
  providers = {aws=aws.tna}
  source          = "./iam_users"
  for_each        = merge(var.iam_users,local.IAM_USERS_TNA)
  iam_user_config = each.value
}
output "iam_name_tna" {
  value = {
    for k, account in module.iam_users_tna : k => account.account
  }
}

module "iam_role_tna" {
  providers = {aws=aws.tna}
  source             = "./iam_role"
  for_each = merge(var.iam_roles,local.IAM_ROLE_TNA)
  iam_role_config = each.value
}

module "iam_custom_policy_tna" {
  providers = {aws=aws.tna}
  source            = "./iam_policy_for_role"
  for_each          = merge(var.iam_policies, local.IAM_CUSTOM_POLICY_TNA)
  iam_policy_config = each.value
}

module "iam_policy_attach_tna" {
  providers = {aws=aws.tna}
  source            = "./iam_policy_attach"
  for_each          = merge(var.iam_user_policy_attach, local.IAM_CUSTOM_POLICY_ATTACH_TNA)
  iam_policy_config = each.value
}


###################################
#viet account
###################################
module "iam_users_viet" {
  providers = {aws=aws.viet}
  source          = "./iam_users"
  for_each        = merge(var.iam_users,local.IAM_USERS_VIET)
  iam_user_config = each.value
}
output "iam_name_viet" {
  value = {
    for k, account in module.iam_users_viet : k => account.account
  }
}

module "iam_role_viet" {
  providers = {aws=aws.viet}
  source             = "./iam_role"
  for_each = merge(var.iam_roles,local.IAM_ROLE_VIET)
  iam_role_config = each.value
}

module "iam_custom_policy_viet" {
  providers = {aws=aws.viet}
  source            = "./iam_policy_for_role"
  for_each          = merge(var.iam_policies, local.IAM_CUSTOM_POLICY_VIET)
  iam_policy_config = each.value
}
module "iam_policy_attach_viet" {
  providers = {aws=aws.viet}
  source            = "./iam_policy_attach"
  for_each          = merge(var.iam_user_policy_attach, local.IAM_CUSTOM_POLICY_ATTACH_VIET)
  iam_policy_config = each.value
}



###################################
#dms account
###################################
module "iam_users_dms" {
  providers = {aws=aws.dms}
  source          = "./iam_users"
  for_each        = merge(var.iam_users,local.IAM_USERS_DMS)
  iam_user_config = each.value
}
output "iam_name_dms" {
  value = {
    for k, account in module.iam_users_dms : k => account.account
  }
}


module "iam_role_dms" {
  providers = {aws=aws.dms}
  source             = "./iam_role"
  for_each = merge(var.iam_roles,local.IAM_ROLE_DMS)
  iam_role_config = each.value
}
module "iam_custom_policy_dms" {
  providers = {aws=aws.dms}
  source            = "./iam_policy_for_role"
  for_each          = merge(var.iam_policies, local.IAM_CUSTOM_POLICY_DMS)
  iam_policy_config = each.value
}


