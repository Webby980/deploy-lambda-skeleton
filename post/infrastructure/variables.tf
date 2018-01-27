variable "environment" {
  type        = "string"
  default     = "test"
}

variable "project" {
  type        = "string"
  default     = "azcard"
}

variable "git_hash" {
  type        = "string"
}

variable "post_lambda_name" {
  type        = "string"
}