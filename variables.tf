variable "project_name" {
  description = "The name of project"
  type        = string
}

variable "aws_region" {
  description = "Region where the infrastructure will be provisioned"
  type        = string
}

variable "domain_name" {
  description = "The domain name for the website without www. prefix"
  type        = string
}

variable "bucket_name" {
  description = "The name of the bucket"
}

variable "referer_key" {
  description = "The random key policy referer"
}

variable "certificate_arn" {
  description = "The certificate arn"
}

variable "lambda_arn" {
  description = "The lambda edge arn"
}
