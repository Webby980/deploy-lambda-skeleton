/* API Gateway methods */

resource "aws_api_gateway_method" "resource_method" {
  rest_api_id = "${data.terraform_remote_state.api_gateway.rest_api_id}"
  resource_id   = "${data.terraform_remote_state.api_endpoints.resource_id}"
  http_method   = "GET"
  authorization = "NONE"
}

resource "aws_api_gateway_method_response" "200_json" {

  depends_on = ["aws_api_gateway_method.resource_method"]
  rest_api_id = "${data.terraform_remote_state.api_gateway.rest_api_id}"
  resource_id = "${data.terraform_remote_state.api_endpoints.resource_id}"
  http_method = "GET"
  status_code = "200"
  response_models = {
    "application/json" = "Empty"
  }
}
