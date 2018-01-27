resource "aws_api_gateway_resource" "resource" {

  rest_api_id = "${data.terraform_remote_state.api_gateway.rest_api_id}"
  parent_id   = "${data.terraform_remote_state.api_gateway.api_gateway_root_resource_id}"
  path_part   = "${var.path_part}"
}
