
data "aws_iam_policy_document" "ec2_scheduler_role" {
  statement {
    actions = ["sts:AssumeRole"]
    principals {
      identifiers = ["arn:aws:iam::<ACCOUNT_A>:role/AWS_IAM_ROLE_CROSS_ACCOUNT_SCHEDULER"]
      type        = "AWS"
    }
  }
}


data "aws_iam_policy_document" "assume_role_for_read_only" {
  statement {
    actions = ["sts:AssumeRole"]
    principals {
      identifiers = ["arn:aws:iam::<ACCOUNT_A>:role/IAM_ROLE_FOR_LAMBDA"]
      type        = "AWS"
    }
  }
}
