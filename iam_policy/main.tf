resource "aws_iam_policy" "policy" {
  name        = var.iam_policy_config.policy_name
  path        = var.iam_policy_config.policy_path
  description = var.iam_policy_config.policy_desc

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = file(var.iam_policy_config.policy)
}

resource "aws_iam_policy_attachment" "attach_policy" {
  name       = "policy_attach"
  policy_arn = aws_iam_policy.policy.arn
  roles = var.iam_policy_config.policy_attach_roles
  users = var.iam_policy_config.policy_attach_users
  groups = var.iam_policy_config.policy_attach_groups
  depends_on = [aws_iam_policy.policy]
}