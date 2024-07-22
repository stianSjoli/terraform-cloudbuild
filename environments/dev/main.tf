
provider "google" {
  project = "security-428910"
}

module "random" {
  source  = "../../modules/random/pet"
}

module "cloudstorage" {
  source  = "../../modules/cloudstorage"
  bucket_name = "bucket_feature-branch"
}
