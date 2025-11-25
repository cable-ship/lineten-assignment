variable "project_id" {
  description = "The ID of the GCP project"
  type        = string
}

variable "region" {
  description = "The GCP region to deploy to"
  type        = string
  default     = "europe-west2"
}

variable "credentials_file" {
  description = "Path to the GCP credentials JSON file"
  type        = string
}

variable "location" {
  description = "Primary GCP region for resources"
  type        = string
}

variable "bucket_name" {
  description = "Name of the Google Cloud Storage (GCS) bucket"
  type        = string
}

variable "retention_days" {
  description = "Number of days to retain objects in the GCS bucket before automatic deletion"
  type        = string
  default     = 90
}

variable "repository_id" {
  description = "Name of you image repo for artifact registry"
  type        = string
}

variable "format" {
  type    = string
  default = "DOCKER"
}

variable "sa_name" {
  description = "Service Account Name"
  type        = string
}

variable "github_repo" {
  description = "Github repo for CI workflow"
  type        = string
}

variable "pool_id" {
  description = "ID of the Workload Identity Pool"
  type        = string
  default     = "github-actions-pool"
}

variable "provider_id" {
  description = "ID of the Workload Identity Provider"
  type        = string
  default     = "github-provider"
}

variable "cidr_block" {
  description = "CIDR block"
  type        = string
  default     = ""
}

variable "vpc_name" {
  description = "Name of the Virtual Private Cloud (VPC) network"
  type        = string
}

variable "subnet_name" {
  description = "Name of the subnet to be created within the VPC"
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR range for the subnet"
  type        = string
}

variable "master_ipv4_cidr_block" {
  description = "CIDR block range for GKE master nodes (control plane)"
  type        = string
}

variable "node_pools" {
  description = "List of node pool configurations for the GKE cluster"
  type = list(object({
    name           = string
    machine_type   = string
    min_node_count = number
    max_node_count = number
    spot_enabled   = bool
    node_zones     = list(string)
  }))
}


variable "cluster_name" {
  description = "Name of the Google Kubernetes Engine (GKE) cluster"
  type        = string
}