output "bucket_id" {
  description = "ID of the root bucket"
  value       = aws_s3_bucket.bucket.id
}

output "bucket_arn" {
  description = "ARN of the root bucket"
  value       = aws_s3_bucket.bucket.arn
}

output "bucket_website_endpoint" {
  description = "Website endpoint of the root bucket"
  value       = aws_s3_bucket.bucket.website_endpoint
}

output "cloudfront_distribution_id" {
  description = "Cloudfront distribution ID of the root bucket"
  value       = aws_cloudfront_distribution.s3_distribution.id
}

output "cloudfront_distribution_domain_name" {
  description = "Cloudfront distribution domain name of the root bucket"
  value       = aws_cloudfront_distribution.s3_distribution.domain_name
}
