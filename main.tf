terraform {
  backend "remote" {
    organization = "hk-hashicorp-learn"

    workspaces {
      name = "hk-learn-terraform-pipelines-k8s"
    }
  }
}

provider "google" {
  version = "3.10.0"
  project = var.google_project
  region  = var.region
}
