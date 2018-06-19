variable "environment" {
  type        = "string"
  default     = "test"
}

variable "project" {
  type        = "string"
}

variable "git_hash" {
  type        = "string"
}

variable "path_part" {
  type        = "string"
}

variable "lambda_name" {
  type        = "string"
  default     = "skeleton-get"
}
