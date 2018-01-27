resource "aws_lambda_alias" "get" {
  name             = "${var.environment}"
  description      = "The alias for create_iak for the ${var.environment} environment, built from ${var.git_hash}"
  function_name    = "${data.terraform_remote_state.get.get_arn}"
  function_version = "${data.terraform_remote_state.get.get_version}"
}
