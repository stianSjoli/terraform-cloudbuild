
provider "google" {
  project = var.project_id
}

module "random" {
  source  = "../../modules/random/pet"
}
