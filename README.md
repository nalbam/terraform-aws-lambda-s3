# terraform-aws-lambda-s3

## usage

```hcl
module "resize-s3" {
  source = "git::https://github.com/nalbam/terraform-aws-lambda-s3.git"
  region = "${var.region}"

  name = "resize"
  stage = "${var.stage}"
  description = "s3 > resize > s3"
  runtime = "nodejs8.10"
  handler = "index.handler"
  memory_size = 512
  timeout = 5
  s3_bucket = "${var.bucket}"
  s3_key = "data/lambda-resize.zip"

  source_bucket = "${var.SOURCE_BUCKET_NAME}"
  filter_prefix = "origin/"
  filter_suffix = ""

  env_vars = {
    PROFILE = "${var.stage}"
  }
}
```
