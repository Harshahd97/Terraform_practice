provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "mybuckets" {
  count          = length(var.bucket_names)
  bucket         = var.bucket_names[count.index]
  acl            = "private"

tags = {
  Name = "${var.tag_name}${count.index + 1}"
  }
}

output "bucket_names" {
  value       = aws_s3_bucket.mybuckets.*.bucket
  description = "The s3 buckets created were"
}
