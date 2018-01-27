output "post_arn" {
  value = "${aws_lambda_function.post.arn}"
}

output "post_qualified_arn" {
  value = "${aws_lambda_function.post.qualified_arn}"
}

output "post_invoke_arn" {
  value = "${aws_lambda_function.post.invoke_arn}"
}

output "post_version" {
  value = "${aws_lambda_function.post.version}"
}

output "post_source_code_hash" {
  value = "${aws_lambda_function.post.source_code_hash}"
}
