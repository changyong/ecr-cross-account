provider "aws" {
  region = "us-west-2"
}

variable "ecr_repo_names" {
  type = "list"

  default = [
    "repo1",
    "repo2",
    "repo3",
    "repo4",
    "repo5",
  ]
}

module "ecr" {
  source         = "./ecr/"
  account_ids    = "arn:aws:iam::0123456789:root"
  ecr_repo_names = "${var.ecr_repo_names}"
}
