variable "bucket_name" {
  description = "The name of the S3 bucket for React app hosting"
  type        = string
}

variable "region" {
  description = "AWS region where resources will be created"
  default     = "us-east-1"
}

variable "domain_name" {
  description = "The custom domain for the CloudFront distribution"
  type        = string
}

variable "acm_certificate_arn" {
  description = "The ACM certificate ARN issued for your domain"
  type        = string
}
