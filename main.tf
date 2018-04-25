provider "aws" {
  region = "us-west-2"
}

variable "ecr_repo_names" {
  type = "list"

  default = ["burrow",
    "dynamic-dynamodb-worker",
    "event",
    "transformer",
    "notification",
    "noae-retry",
    "shining-bot",
    "rating",
    "usage",
    "api-gateway",
    "revenue-distribution",
  ]
}

module "ecr" {
  source         = "./ecr/"
  account_ids    = "arn:aws:iam::0123456789:root"
  ecr_repo_names = "${var.ecr_repo_names}"
}
