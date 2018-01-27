output "${var.get_lambda_name}_arn" {
  value = "${aws_lambda_function.create_iak.arn}"
}

output "${var.get_lambda_name}_qualified_arn" {
  value = "${aws_lambda_function.create_iak.qualified_arn}"
}

output "${var.get_lambda_name}_invoke_arn" {
  value = "${aws_lambda_function.create_iak.invoke_arn}"
}

output "${var.get_lambda_name}_version" {
  value = "${aws_lambda_function.create_iak.version}"
}

output "${var.get_lambda_name}_source_code_hash" {
  value = "${concat("aws_lambda_function.", var.get_lambda_name, ".source_code_hash")}"
}
