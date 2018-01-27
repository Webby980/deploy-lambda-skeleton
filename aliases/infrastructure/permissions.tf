resource "aws_lambda_permission" "get" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  function_name = "${data.terraform_remote_state.get.get_arn}"
  principal     = "apigateway.amazonaws.com"
  source_arn = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${data.terraform_remote_state.api_gateway.api_gateway_id}/*/GET${data.terraform_remote_state.api_endpoints.request_iak_endpoint_resource_path}"
  qualifier = "${aws_lambda_alias.get.name}"
}
