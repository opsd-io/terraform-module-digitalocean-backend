output "region" {
  description = "The region where the resources resides."
  value       = digitalocean_spaces_bucket.state.region
}

output "name" {
  description = "The name of the bucket."
  value       = digitalocean_spaces_bucket.state.name
}

output "urn" {
  description = "The uniform resource name of the bucket."
  value       = digitalocean_spaces_bucket.state.urn
}

output "endpoint" {
  description = "The FQDN of the bucket without the bucket name."
  value       = digitalocean_spaces_bucket.state.endpoint
}

output "bucket_domain_name" {
  description = "The FQDN of the bucket."
  value       = digitalocean_spaces_bucket.state.bucket_domain_name
}

output "backend_config" {
  description = "The backend configuration, which can be saved to `backend.tf` file."
  value       = <<-EOF
    terraform {
      backend "s3" {
        skip_region_validation      = true # avoid "Invalid AWS Region" error
        skip_credentials_validation = true # skips calling sts:GetCallerIdentity
        skip_metadata_api_check     = true # skips EC2 Metadata API
        skip_requesting_account_id  = true
        skip_s3_checksum            = true

        region    = "${digitalocean_spaces_bucket.state.region}"
        endpoints = {
          s3 = "https://${digitalocean_spaces_bucket.state.endpoint}"
        }
        bucket    = "${digitalocean_spaces_bucket.state.name}"
        # The `key` should be in `backend-config.tfvars` or set via `-backend-config` flag.
      }
    }
  EOF
}
