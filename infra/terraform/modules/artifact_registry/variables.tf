variable "project_id" {
  description = "GCP project where the repo will be created"
  type        = string
}

variable "location" {
  description = "GCP region (or multi-region) for Artifact Registry"
  type        = string
  default     = "us-central1"
}

variable "repository_id" {
  description = "ID (name) of the Artifact Registry repo"
  type        = string
}

variable "description" {
  description = "Human-readable description"
  type        = string
  default     = "Docker images"
}

variable "format" {
  description = "Format of the repo (e.g. DOCKER, MAVEN, NPM)"
  type        = string
  default     = "DOCKER"
}

variable "retention_days" {
  description = "Number of days to retain untagged images before cleanup"
  type        = number
  default     = 30
}
