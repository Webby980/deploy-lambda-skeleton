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

variable "get_lambda_name" {
  type        = "string"
}

variable "path_part" {
  type = "string"
}
