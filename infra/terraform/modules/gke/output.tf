output "endpoint" {
  description = "GKE API endpoint"
  value       = google_container_cluster.primary.endpoint
}

output "cluster_ca_certificate" {
  description = "Base64-encoded CA cert for cluster"
  value       = google_container_cluster.primary.master_auth[0].cluster_ca_certificate
}

output "location" {
  description = "Region of the cluster"
  value       = google_container_cluster.primary.location
}

output "cluster_name" {
  description = "Name of the GKE cluster"
  value       = google_container_cluster.primary.name
}