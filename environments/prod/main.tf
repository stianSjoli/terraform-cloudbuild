
provider "google" {
  project = "security-428910"
}

# module "cloudbuild" {
#  source  = "../../modules/cloudbuild"
# }

module "iam" {
  source  = "../../modules/IAM"
}

