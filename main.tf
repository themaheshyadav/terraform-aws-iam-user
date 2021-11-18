resource "aws_iam_user" "main" {
  count = var.enabled && var.policy_enabled  ? 1 : 0
  name = var.name
  path = "/"
  force_destroy = var.force_destroy
  tags = var.tag
}


resource "aws_iam_user_policy" "main" {
  count = var.enabled && var.policy_enabled && var.policy_arn != "" ? 1 : 0
  user = join("", aws_iam_user.main.*.name)

policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}

resource "aws_iam_user_policy_attachment" "test" {
 count =  var.enabled && var.policy_enabled ? 1 : 0
  user       = join("", aws_iam_user.main.*.name)
  policy_arn = var.policy_arn
}