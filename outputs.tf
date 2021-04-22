output "bucket_id" {
  description = "ID of the root bucket"
  value       = module.static_website.bucket_id
}

output "bucket_arn" {
  description = "ARN of the root bucket"
  value       = module.static_website.bucket_arn
}

output "bucket_website_endpoint" {
  description = "Website endpoint of the root bucket"
  value       = module.static_website.website_endpoint
}

output "cloudfront_distribution_id" {
  description = "Cloudfront distribution ID of the root bucket"
  value       = module.static_website.cloudfront_id
}

output "cloudfront_distribution_domain_name" {
  description = "Cloudfront distribution domain name of the root bucket"
  value       = module.static_website.cloudfront_domain_name
}
