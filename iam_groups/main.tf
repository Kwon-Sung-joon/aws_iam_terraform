resource "aws_iam_group" "iam_groups" {
  name = var.iam_group_config.group_name
  path = var.iam_group_config.group_path
}

resource "aws_iam_group_policy_attachment" "iam_group_policy" {
  group = var.iam_group_config.group_name
  for_each = var.iam_group_config.mgd_policy
  policy_arn = each.value
  depends_on = [aws_iam_group.iam_groups ,]
}
