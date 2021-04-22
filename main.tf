terraform {
  required_version = ">= 0.13.6"
}

module "static_website" {
  source = "./modules/static-website"

  project_name    = var.project_name
  aws_region      = var.aws_region
  domain_name     = var.domain_name
  bucket_name     = var.bucket_name
  referer_key     = var.referer_key
  certificate_arn = var.certificate_arn
  lambda_arn      = var.lambda_arn
}
