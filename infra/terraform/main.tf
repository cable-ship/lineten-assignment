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


module "vpc" {
  source        = "./modules/vpc"
  vpc_name      = var.vpc_name
  subnet_name   = var.subnet_name
  subnet_cidr   = var.subnet_cidr
  pods_cidr     = var.cluster_ipv4_cidr_block
  services_cidr = var.services_ipv4_cidr_block
  region        = var.region
}

module "gke" {
  source                   = "./modules/gke"
  project_id               = var.project_id
  cluster_name             = var.cluster_name
  region                   = var.region
  services_ipv4_cidr_block = var.services_ipv4_cidr_block
  cluster_ipv4_cidr_block  = var.cluster_ipv4_cidr_block
  master_ipv4_cidr_block   = var.master_ipv4_cidr_block
  network                  = module.vpc.vpc_self_link
  subnetwork               = module.vpc.subnet_self_link
  cidr_block               = var.cidr_block
  node_pools               = var.node_pools
  location                 = var.location
  depends_on               = [ module.vpc]
}