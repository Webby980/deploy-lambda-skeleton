resource "aws_lambda_alias" "${var.get_lambda_name}" {
  name             = "${var.environment}"
  description      = "The alias for create_iak for the ${var.environment} environment, built from ${var.git_hash}"
  function_name    = "${data.terraform_remote_state.${var.get_lambda_name}.${var.get_lambda_name}_arn}"
  function_version = "${data.terraform_remote_state.create_iak.create_iak_version}"
}
