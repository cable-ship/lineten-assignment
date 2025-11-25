# Terraform Configuration: Variable Definitions

This [terraform.tfvars](./terraform.tfvars)  file contains environment-specific input values for Terraform modules that provision infrastructure on Google Cloud Platform (GCP).

## Variables

| Name                       | Description                                         | Example                           |
| -------------------------- | --------------------------------------------------- | --------------------------------- |
| `project_id`             | GCP project ID                                      | `sample-gcp-project`            |
| `region`                 | GCP region where resources will be deployed         | `europe-west2`                  |
| `network_name`           | Name of the Virtual Private Cloud (VPC)             | `sample-vpc`                    |
| `subnet_name`            | Name of the subnet within the VPC                   | `sample-subnet`                 |
| `subnet_ip`              | CIDR block for the subnet                           | `10.0.0.0/24`                   |
| `gke_cluster_name`       | Name of the Google Kubernetes Engine (GKE) cluster  | `sample-gke-cluster`            |
| `artifact_registry_name` | Name of the Artifact Registry                       | `sample-artifact-registry`      |
| `bucket_name`            | GCS bucket name (e.g., for storing Terraform state) | `sample-terraform-state-bucket` |
| `node_pools`             | Configuration for GKE nodepools                     | `production_pool`               |

## �� GKE Node Pool Configuration

The following variables define the configuration of a GKE (Google Kubernetes Engine) node pool used in the cluster.

| Name               | Description                                           | Example                |
| ------------------ | ----------------------------------------------------- | ---------------------- |
| `name`           | Name of the node pool                                 | `production-pool`    |
| `machine_type`   | Type of VM instances used for the nodes               | `e2-medium`          |
| `min_node_count` | Minimum number of nodes in the pool                   | `1`                  |
| `max_node_count` | Maximum number of nodes in the pool (for autoscaling) | `3`                  |
| `spot_enabled`   | Whether Spot (preemptible) VMs are enabled            | `false`              |
| `node_zones`     | List of zones where nodes will be deployed            | `["europe-west2-a"]` |

This configuration ensures a cost-efficient, autoscaling node pool for your production workloads.

## Usage

Run Terraform with this file to apply the configuration:

```bash
$ terraform init
$ terraform plan -var-file="terraform.tfvars"
$ terraform apply -var-file="terraform.tfvars"
```
