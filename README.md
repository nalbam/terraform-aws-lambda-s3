# terraform-aws-lambda-s3

## usage
```
module "lambda" {
  source = "git::https://github.com/nalbam/terraform-aws-lambda-s3.git"
  region = "ap-northeast-2"

  name = "demo"
  stage = "dev"
  runtime = "nodejs6.10"
  handler = "index.handler"
  memory_size = 512
  timeout = 5
  s3_bucket = "deploy_bucket_name"
  s3_key = "deploy/lambda.zip"

  source_bucket = "source_bucket_name"
  filter_prefix = "upload/"
  filter_suffix = ""
}
```
