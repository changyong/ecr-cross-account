output "ecr_repository_name" {
  value = "${aws_ecr_repository.default.name}"
}

output "ecr_repository_url" {
  value = "${aws_ecr_repository.default.repository_url}"
}
