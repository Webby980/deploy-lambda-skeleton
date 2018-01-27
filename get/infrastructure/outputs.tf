output "get_arn" {
  value = "${aws_lambda_function.get.arn}"
}

output "get_qualified_arn" {
  value = "${aws_lambda_function.get.qualified_arn}"
}

output "get_invoke_arn" {
  value = "${aws_lambda_function.get.invoke_arn}"
}

output "get_version" {
  value = "${aws_lambda_function.get.version}"
}

output "get_source_code_hash" {
  value = "${aws_lambda_function.get.source_code_hash}"
}
