resource "aws_iam_policy_attachment" "attach_policy" {
  name       = var.iam_policy_config.name
  policy_arn = var.iam_policy_config.policy_arn
  roles = var.iam_policy_config.roles
  users = var.iam_policy_config.users
  groups = var.iam_policy_config.groups
}