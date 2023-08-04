module "fluxcd" {
  source       = "../../"
  flux_version = "2.9.2"
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}
