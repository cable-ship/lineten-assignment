output "repository_name" {
  description = "The resource name of the repository"
  value       = google_artifact_registry_repository.repo.name
}

output "repository_url" {
  description = "The Docker-pull URL for this repository"
  value       = "${var.location}-docker.pkg.dev/${var.project_id}/${var.repository_id}"
}
