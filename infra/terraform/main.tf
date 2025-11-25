module "artifact_registry" {
  source         = "./modules/artifact_registry"
  project_id     = var.project_id
  location       = var.location
  repository_id  = var.repository_id
  description    = "Artifact Registry for Docker images of my-app"
  format         = var.format
  retention_days = var.retention_days
}

module "oidc" {
  source             = "./modules/oidc"
  project_id         = var.project_id
  pool_id            = var.pool_id
  provider_id        = var.provider_id
  service_account_id = "projects/${var.project_id}/serviceAccounts/${var.sa_name}@${var.project_id}.iam.gserviceaccount.com"
  github_repo        = var.github_repo
}
