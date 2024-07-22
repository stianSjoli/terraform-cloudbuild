
provider "google" {
  project = var.project_id
}

module "random" {
  source  = "../../modules/random/pet"
}

module "cloudstorage" {
  source  = "../../modules/cloudstorage"
  bucket_name = "bucket_feature-branch"
}
