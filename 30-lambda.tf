# Lambda Function : s3 > lambda

data "aws_s3_bucket" "source" {
  bucket = var.source_bucket
}

module "lambda" {
  source = "github.com/nalbam/terraform-aws-lambda?ref=v0.12.1"
  region = var.region

  name        = var.name
  stage       = var.stage
  description = var.description
  runtime     = var.runtime
  handler     = var.handler
  memory_size = var.memory_size
  timeout     = var.timeout
  s3_bucket   = var.s3_bucket
  s3_source   = var.s3_source
  s3_key      = var.s3_key
  env_vars    = var.env_vars
}

resource "aws_s3_bucket_notification" "default" {
  bucket = data.aws_s3_bucket.source.id

  lambda_function {
    lambda_function_arn = module.lambda.arn

    events = [
      "s3:ObjectCreated:*",
    ]

    filter_prefix = var.filter_prefix
    filter_suffix = var.filter_suffix
  }
}

resource "aws_lambda_permission" "default" {
  action        = "lambda:invokeFunction"
  function_name = module.lambda.arn
  principal     = "s3.amazonaws.com"
  statement_id  = "AllowExecutionFromS3Bucket"
  source_arn    = data.aws_s3_bucket.source.arn
}
