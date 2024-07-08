
provider "google" {
  project = var.project_id
}

# module "cloudbuild" {
#  source  = "../../modules/cloudbuild"
# }

module "iam" {
  source  = "../../modules/IAM"
}

