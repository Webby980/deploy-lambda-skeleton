resource "aws_lambda_function" "get" {
    function_name = "${var.get_lambda_name}"
    handler = "handler.handle"
    runtime = "python3.6"
    role = "${data.terraform_remote_state.api_lambda_role.api_lambda_role_arn}"

    s3_bucket = "${data.terraform_remote_state.lambda_artifacts_s3_bucket.lambda_artifacts_s3_bucket_id}"
    s3_key = "${var.get_lambda_name}/${var.git_hash}.zip"
    source_code_hash = "${data.aws_s3_bucket_object.s3_source_hash.body}"

    publish = true

    tags {
      GitHash     = "${var.git_hash}"
    }
}

data "aws_s3_bucket_object" "s3_source_hash" {
  bucket = "${data.terraform_remote_state.lambda_artifacts_s3_bucket.lambda_artifacts_s3_bucket_id}"
  key    = "${var.get_lambda_name}/${var.get_lambda_name}-${var.git_hash}.hash"
}
