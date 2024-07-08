resource "aws_iam_user" "iam_user" {
  name = var.iam_user_config.user_name
  force_destroy = true
  tags = {
    NAME = var.iam_user_config.tag_name
  }
}

resource "aws_iam_user_group_membership" "iam_user_membership" {
  user = var.iam_user_config.user_name
  groups = var.iam_user_config.group_name

  depends_on = [aws_iam_user.iam_user]
}


resource "aws_iam_user_login_profile" "aws_console" {
  user = var.iam_user_config.user_name
  password_reset_required = true
  lifecycle {
    ignore_changes = [
      password_reset_required,
    ]
  }

  depends_on = [aws_iam_user.iam_user]
}

output "account" {
  value = [var.iam_user_config.user_name , aws_iam_user_login_profile.aws_console.password]
}
