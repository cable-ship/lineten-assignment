variable "network" {
  description = "The network self link"
  type        = string
}

variable "subnetwork" {
  description = "The subnetwork self link"
  type        = string
}

variable "node_pools" {
  description = "List of node pool objects"
  type = list(object({
    name           = string
    machine_type   = string
    min_node_count = number
    max_node_count = number
    spot_enabled   = bool
    node_zones     = list(string)
  }))
}

variable "location" {
  description = "The region for resources"
  type        = string
}

variable "region" {
  description = "The region for resources"
  type        = string
}

variable "cluster_name" {
  description = "The cluster for resources"
  type        = string
}

variable "project_id" {
  description = "Name of the subnet"
  type        = string
}

variable "cluster_ipv4_cidr_block" {
  description = "Cluster IPv4 CIDR block"
  type        = string
}

variable "services_ipv4_cidr_block" {
  description = "Cluster IPv4 CIDR block"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block"
  type        = string
}

variable "master_ipv4_cidr_block" {
  description = "Control plane CIDR block"
  type        = string
}

variable "enable_private_nodes" {
  description = "Variable to create private nodes"
  type        = string
  default     = true
}

variable "enable_private_endpoint" {
  description = "Variable to create private endpoints"
  type        = string
  default     = true
}

variable "remove_default_node_pool" {
  description = "Remove default node_pool"
  type        = string
  default     = true
}

variable "initial_node_count" {
  description = "Number of nodes in node_pool"
  type        = number
  default     = 1
}
