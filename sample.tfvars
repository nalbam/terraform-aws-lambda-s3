name = "demo"
stage = "dev"

runtime = "nodejs6.10"
handler = "index.handler"

s3_bucket = "sample"
s3_key = "sample"

source_bucket = "virginia.nalbam.com"
filter_prefix = "upload/"
filter_suffix = ""

env_vars = {
  SAMPLE = "sample"
}
