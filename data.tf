
data "aws_iam_policy_document" "ec2_scheduler_role" {
  statement {
    actions = ["sts:AssumeRole"]
    principals {
      identifiers = ["arn:aws:iam::589566835476:role/AWS_IAM_ROLE_CROSS_ACCOUNT_SCHEDULER"]
      type        = "AWS"
    }
  }
}


data "aws_iam_policy_document" "assume_role_for_read_only" {
  statement {
    actions = ["sts:AssumeRole"]
    principals {
      identifiers = ["arn:aws:iam::589566835476:role/IAM_ROLE_FOR_LAMBDA"]

      type        = "AWS"
    }
  }
}