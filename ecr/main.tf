data "template_file" "ecr_access_policy" {
  template = "${file("${path.module}/templates/ecr-cross-account-access-policy.tpl")}"

  vars {
    account_ids = "${var.account_ids}"
  }
}

resource "aws_ecr_repository_policy" "default" {
  count      = "${length(var.ecr_repo_names)}"
  policy     = "${data.template_file.ecr_access_policy.rendered}"
  repository = "${element(var.ecr_repo_names, count.index)}"
}

resource "aws_ecr_repository" "default" {
  name  = "${element(var.ecr_repo_names, count.index)}"
  count = "${length(var.ecr_repo_names)}"
}
