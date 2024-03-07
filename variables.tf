variable "region" {
  type    = string
  default = "us-east-2"
}

variable "bucket_names" {
  type    = list
  default = ["dev-harsha-18", "prod-harsha-1803", "test-harsha-180397"]
}

variable "tag_name" {
  description = "tag for s3 bucket"
  type = string
  default = "mybucket_"
}
