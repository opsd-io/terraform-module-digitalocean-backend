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
