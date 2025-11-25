module "artifact_registry" {
  source         = "./modules/artifact_registry"
  project_id     = var.project_id
  location       = var.location
  repository_id  = var.repository_id
  description    = "Artifact Registry for Docker images of my-app"
  format         = var.format
  retention_days = var.retention_days
}