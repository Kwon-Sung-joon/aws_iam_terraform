resource "aws_iam_user" "iam_user" {
  name = var.iam_user_config.user_name
}

resource "aws_iam_user_group_membership" "iam_user_membership" {
  user = aws_iam_user.iam_user.name
  groups = var.iam_user_config.group_name
}


resource "aws_iam_user_login_profile" "aws_console" {
  user = aws_iam_user.iam_user.name
  password_reset_required = true
  lifecycle {
    ignore_changes = [
      password_reset_required,
    ]
  }
}

output "account" {
  value = [aws_iam_user.iam_user.name , aws_iam_user_login_profile.aws_console.password]
}
