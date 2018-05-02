data "aws_caller_identity" "current" {}

variable region {
  default = "us-east-1"
}

variable name {
  default = "demo"
  description = "Solution name, e.g. 'app' or 'demo'"
}

variable stage {
  default = "dev"
  description = "Stage, e.g. 'prod', 'dev', 'stage', or 'test'"
}

variable description {
  default = ""
  description = "Description of what your Lambda Function does."
}

variable "runtime" {
  //default = ""
  description = "See Runtimes for valid values."
}

variable "handler" {
  //default = ""
  description = "The function entrypoint in your code."
}

variable "memory_size" {
  default = "512"
  description = "Amount of memory in MB your Lambda Function can use at runtime."
}

variable "timeout" {
  default = "5"
  description = "The amount of time your Lambda Function has to run in seconds."
}

variable "s3_bucket" {
  //default = ""
  description = "The S3 bucket location containing the function's deployment package."
}

variable "s3_key" {
  //default = ""
  description = "The S3 key of an object containing the function's deployment package."
}

variable "env_vars" {
  type = "map"
  //default = {}
  description = "A map that defines environment variables for the Lambda function."
}

variable "source_bucket" {
  //default = ""
}

variable "filter_prefix" {
  //default = "upload/"
}

variable "filter_suffix" {
  //default = "*.log"
}
