variable "flux_version" {
  type        = string
  default     = "2.14.0"
  description = "FluxCD version"
}

variable "flux_sync_version" {
  type        = string
  default     = "1.8.2"
  description = "FluxCD sync version"
}

variable "github_org" {
  description = "GitHub organization"
  type        = string
}

variable "github_repository" {
  description = "GitHub repository"
  type        = string
}
