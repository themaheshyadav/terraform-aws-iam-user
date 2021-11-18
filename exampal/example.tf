provider "aws" {
      region = "us-east-1"
}

module "aws_iam_user" {
      source = "../"
      name = "main"
      enabled = true
      force_destroy = false
      tag = {
            createdby =  "xxxxx"
      }
      policy_enabled = true
      policy_name = "main"
      policy_arn = "arn:aws:iam::aws:policy/AWSDirectConnectReadOnlyAccess"
}