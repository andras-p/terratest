# set globally unique or env specific vars with a map
variable "env" {
  type        = string
  description = "Environment: dev / prod (set in Terraform Cloud workspaces)"
}

variable "project" {
  type        = map(any)
  description = "Google Cloud Platform project name"
  default = {
    dev  = "madecom-dev-andras-patyi"  # madecom-veritas-dev
    prod = "madecom-data-ingestion-andras"  # madecom-veritas
  }
}

variable "region" {
  type        = string
  description = "Region the resources will be created in"
  default     = "EU"
}

# labeling the resource with the service name
variable "labels" {
  type = map(any)
  default = {
    resource = "terratest"
  }
}
