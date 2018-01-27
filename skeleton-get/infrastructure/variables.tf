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

variable "lambda_name" {
  type        = "string"
  default     = "api-internal-skeleton-get"
}
