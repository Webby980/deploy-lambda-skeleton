resource "aws_lambda_permission" "request_iak" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  function_name = "${data.terraform_remote_state.request_iak_lambda.request_iak_arn}"
  principal     = "apigateway.amazonaws.com"
  source_arn = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${data.terraform_remote_state.api_gateway.api_gateway_id}/*/${data.terraform_remote_state.api_endpoints.request_iak_endpoint_http_method}${data.terraform_remote_state.api_endpoints.request_iak_endpoint_resource_path}"
  qualifier = "${aws_lambda_alias.request_iak.name}"
}

resource "aws_lambda_permission" "create_iak" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  function_name = "${data.terraform_remote_state.create_iak_lambda.create_iak_arn}"
  principal     = "apigateway.amazonaws.com"
  source_arn = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${data.terraform_remote_state.api_gateway.api_gateway_id}/*/${data.terraform_remote_state.api_endpoints.create_iak_endpoint_http_method}${data.terraform_remote_state.api_endpoints.create_iak_endpoint_resource_path}"
  qualifier = "${aws_lambda_alias.create_iak.name}"
}
