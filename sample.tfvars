name = "demo"
stage = "dev"

runtime = "nodejs6.10"
handler = "index.handler"

s3_bucket = "sample"
s3_key = "sample"

source_bucket = "source_bucket_name"
filter_prefix = "upload/"
filter_suffix = ""

env_vars = {
  SAMPLE = "sample"
}
