output "${var.get_lambda_name}_alias_arn" {
  value = "${aws_lambda_alias.get.arn}"
}
