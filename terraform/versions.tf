terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.21.0"
    }
  }

  required_version = ">= 1.2.0"

  # this block can be set up for dev as the VCS (prod) workflow ignores it
  cloud {
    organization = "MADE-Test"
    workspaces {
      name = "terratest-dev"
    }
  }
}
