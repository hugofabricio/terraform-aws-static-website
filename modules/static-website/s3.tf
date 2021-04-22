resource "aws_s3_bucket" "bucket" {
  bucket                        = var.bucket_name
  acl                           = "public-read"
  force_destroy                 = true

  cors_rule {
    allowed_headers             = ["Authorization", "Content-Length"]
    allowed_methods             = ["GET", "PUT", "POST", "DELETE"]
    allowed_origins             = ["https://${var.domain_name}"]
    max_age_seconds             = 3000
  }

  website {
    index_document              = "index.html"
    error_document              = "404.html"
  }

  policy  = templatefile("${path.module}/templates/s3-policy.json", { bucket = var.bucket_name, referer_key: var.referer_key })

  tags = {
    Name                        = var.bucket_name
    Workload                    = var.project_name
    Infraestructure             = "terraform"
  }
}

resource "aws_s3_bucket" "redirect_bucket" {
  bucket                        = "${var.bucket_name}-redirect"
  acl                           = "public-read"
  force_destroy                 = true

  website {
    redirect_all_requests_to    = "https://${var.domain_name}"
  }

  policy  = templatefile("${path.module}/templates/s3-policy.json", { bucket = "${var.bucket_name}-redirect", referer_key: var.referer_key })

  tags = {
    Name                        = "${var.bucket_name}-redirect"
    Workload                    = var.project_name
    Infraestructure             = "terraform"
  }
}
