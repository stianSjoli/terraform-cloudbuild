
provider "google" {
  project = var.project_id
}

module "cloudstorage" {
  source  = "../../modules/cloudstorage"
}
