module "fluxcd" {
  source            = "../../"
  flux_version      = "2.9.2"
  flux_sync_version = "1.10.0"
  github_org        = "unfeeling91"
  github_repository = "flux-e2e"
}

resource "kind_cluster" "this" {
  name           = "flux-e2e"
  wait_for_ready = true
}

provider "helm" {
  kubernetes {
    host                   = kind_cluster.this.endpoint
    client_certificate     = kind_cluster.this.client_certificate
    client_key             = kind_cluster.this.client_key
    cluster_ca_certificate = kind_cluster.this.cluster_ca_certificate
  }
}

provider "kind" {}

provider "kubernetes" {
  host                   = kind_cluster.this.endpoint
  client_certificate     = kind_cluster.this.client_certificate
  client_key             = kind_cluster.this.client_key
  cluster_ca_certificate = kind_cluster.this.cluster_ca_certificate
}

provider "github" {
}
