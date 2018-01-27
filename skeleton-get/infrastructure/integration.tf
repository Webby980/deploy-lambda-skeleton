/* API Gateway integration */

resource "aws_api_gateway_integration" "integration" {

  rest_api_id = "${data.terraform_remote_state.api_gateway.rest_api_id}"
  resource_id = "${data.terraform_remote_state.api_endpoints.resource_id}"
  http_method = "${aws_api_gateway_method.resource_method.http_method}"
  integration_http_method = "GET"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${aws_lambda_function.lambda.arn}:$${stageVariables.lambdaAlias}/invocations"
}
