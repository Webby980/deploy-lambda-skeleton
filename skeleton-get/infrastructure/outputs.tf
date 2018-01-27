output "arn" {
  value = "${aws_lambda_function.lambda.arn}"
}

output "qualified_arn" {
  value = "${aws_lambda_function.lambda.qualified_arn}"
}

output "name" {
  value = "${aws_lambda_function.lambda.function_name}"
}

output "invoke_arn" {
  value = "${aws_lambda_function.lambda.invoke_arn}"
}

output "version" {
  value = "${aws_lambda_function.lambda.version}"
}

output "source_code_hash" {
  value = "${aws_lambda_function.lambda.source_code_hash}"
}
