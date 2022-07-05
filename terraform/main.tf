# provider
provider "google" {
  project = lookup(var.project, var.env)
  region  = var.region
}

# a bucket
resource "google_storage_bucket" "function_bucket" {
  name     = "${lookup(var.project, var.env)}-terratest"
  location = var.region
  labels   = var.labels
}

# other bucket
resource "google_storage_bucket" "other_bucket" {
  name     = "${lookup(var.project, var.env)}-terratest2"
  location = var.region
  labels   = var.labels
}

# another bucket
resource "google_storage_bucket" "other_bucket2" {
  name     = "${lookup(var.project, var.env)}-terratest3"
  location = var.region
  labels   = var.labels
}
