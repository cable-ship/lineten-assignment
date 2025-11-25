variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
}

variable "subnet_cidr" {
  description = "Primary CIDR for subnet"
  type        = string
}

variable "pods_cidr" {
  description = "CIDR block for pods (secondary)"
  type        = string
}

variable "services_cidr" {
  description = "CIDR block for services (secondary)"
  type        = string
}

variable "region" {
  description = "Region for the resources"
  type        = string
}


variable "auto_create_subnetworks" {
  description = "Auto-create subnets"
  type        = string
  default     = false
}


variable "routing_mode" {
  description = "Regional or Zonal"
  type        = string
  default     = "REGIONAL"
}

variable "nat_ip_allocate_option" {
  type    = string
  default = "AUTO_ONLY"
}

variable "source_subnetwork_ip_ranges_to_nat" {
  type    = string
  default = "ALL_SUBNETWORKS_ALL_IP_RANGES"
}
