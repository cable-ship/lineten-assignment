project_id               = "org-project"
region                   = "europe-west2"
bucket_name              = "terraform-state-trial123"
credentials_file         = "~/keys/org-project-6657764b6e5d.json"
location                 = "europe-west2"
vpc_name                 = "prod_private"
subnet_name              = "production_subnet"
subnet_cidr              = "10.10.0.0/16"
cluster_name             = "production"
sa_name                  = "github-actions-ci"
github_repo              = "github.com/cable-ship/linten-assignment"
master_ipv4_cidr_block   = "172.16.0.16/28"
repository_id            = "ping-pong"
node_pools = [
  {
    name           = "production-pool"
    machine_type   = "e2-medium"
    min_node_count = 1
    max_node_count = 3
    spot_enabled   = false
    node_zones     = ["europe-west2"]
  },
  {
    name           = "staging-pool"
    machine_type   = "e2-small"
    min_node_count = 1
    max_node_count = 2
    spot_enabled   = true
    node_zones     = ["europe-west2"]
  }
]
