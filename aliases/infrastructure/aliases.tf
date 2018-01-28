resource "aws_lambda_alias" "get" {
  name             = "${var.environment}"
  description      = "The alias for the get method for ${var.path_part} in the ${var.environment} environment, built from ${var.git_hash}"
  function_name    = "${data.terraform_remote_state.get.arn}"
  function_version = "${data.terraform_remote_state.get.version}"
}
