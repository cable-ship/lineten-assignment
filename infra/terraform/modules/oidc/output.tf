
output "workload_identity_pool_name" {
  value       = google_iam_workload_identity_pool.github_pool.name
  description = "Workload Identity Pool resource name"
}

output "workload_identity_provider_name" {
  value       = google_iam_workload_identity_pool_provider.github_provider.name
  description = "Workload Identity Pool Provider resource name"
}
