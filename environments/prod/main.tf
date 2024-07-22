
provider "google" {
  project = var.project
}

# module "cloudbuild" {
#  source  = "../../modules/cloudbuild"
# }

module "iam" {
  source  = "../../modules/IAM"
}

