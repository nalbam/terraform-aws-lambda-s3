# variable

data "aws_caller_identity" "current" {
}

variable "region" {
  default = "us-east-1"
}

variable "name" {
  description = "Solution name, e.g. 'app' or 'demo'"
  default     = "demo"
}

variable "stage" {
  description = "Stage, e.g. 'prod', 'dev', 'stage', or 'test'"
  default     = "dev"
}

variable "description" {
  description = "Description of what your Lambda Function does."
  default     = ""
}

variable "runtime" {
  description = "See Runtimes for valid values."
  //default = ""
}

variable "handler" {
  description = "The function entrypoint in your code."
  //default = ""
}

variable "memory_size" {
  description = "Amount of memory in MB your Lambda Function can use at runtime."
  default     = "512"
}

variable "timeout" {
  description = "The amount of time your Lambda Function has to run in seconds."
  default     = "5"
}

variable "s3_bucket" {
  description = "The S3 bucket location containing the function's deployment package."
  //default = ""
}

variable "s3_source" {
  description = "The S3 source location containing the function's deployment package."
  default     = ""
}

variable "s3_key" {
  description = "The S3 key of an object containing the function's deployment package."
  //default = ""
}

variable "env_vars" {
  description = "A map that defines environment variables for the Lambda function."
  type        = map(string)
  //default = {
  //  "PROFILE" = "dev"
  //}
}

variable "source_bucket" {
  //default = ""
}

variable "filter_prefix" {
  default = "origin/"
}

variable "filter_suffix" {
  default = ""
}
