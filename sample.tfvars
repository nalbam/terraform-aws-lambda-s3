name  = "demo"
stage = "dev"

runtime = "nodejs10.x"
handler = "index.handler"

s3_bucket = "sample"
s3_key    = "sample"

source_bucket = "upload.nalbam.com"
filter_prefix = "upload/"
filter_suffix = ""

env_vars = {
  SAMPLE = "sample"
}
