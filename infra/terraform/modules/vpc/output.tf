output "vpc_self_link" {
  description = "Self‐link of the newly created VPC"
  value       = google_compute_network.vpc.self_link
}

output "subnet_self_link" {
  description = "Self‐link of the new subnetwork"
  value       = google_compute_subnetwork.subnet.self_link
}
