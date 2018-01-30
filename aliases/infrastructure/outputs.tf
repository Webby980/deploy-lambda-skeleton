output "${var.path_part}_alias_arn" {
  value = "${aws_lambda_alias.get.arn}"
}
