terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.15"
    }
  }
  required_version = ">= 1.6.0"
}
