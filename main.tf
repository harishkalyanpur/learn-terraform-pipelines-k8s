terraform {
  backend "remote" {
    organization = "hk-hashicorp-learn"

    workspaces {
      name = "learn-terraform-pipelines-k8s"
    }
  }
}

provider "google" {
  version = "3.38.0"
  project = var.google_project
  region  = var.region
}
