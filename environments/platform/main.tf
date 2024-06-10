
locals {
  env = "platform"
}

provider "google" {
  project = "${var.project}"
}

module "cloudbuild" {
  source  = "../../modules/cloudbuild"
  project = "${var.project}"
  env     = "${local.env}"
}

