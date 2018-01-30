data "terraform_remote_state" "get" {
  backend = "s3"

  config {
    bucket = "tf-state-${data.aws_caller_identity.current.account_id}-${data.aws_region.current.name}"
    key = "${var.project}/${data.aws_caller_identity.current.account_id}/${data.aws_region.current.name}/lambda/${var.path_part}.tfstate"
    region = "${data.aws_region.current.name}"
  }
}
