
variable "bucket_name" {
  type = string
}

variable "bucket_acl" {
  type        = string
  default     = "private" # Harmless/safe by default in main.tf
  description = "Bucket access level"
}

resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
  acl    = var.bucket_acl # Insecure value comes from tfvars
}
