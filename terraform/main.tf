# provider
provider "google" {
  project = lookup(var.project, var.env)
  region  = var.region
}

# Cloud Storage bucket
resource "google_storage_bucket" "function_bucket" {
  name     = "${lookup(var.project, var.env)}-terratest"
  location = var.region
  labels   = var.labels
}
