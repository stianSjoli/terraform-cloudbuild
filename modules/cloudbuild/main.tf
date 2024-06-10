
resource "google_service_account" "cloudbuild_service_account" {
  account_id = "cloud-sa"
}

resource "google_cloudbuild_trigger" "filename_trigger" {
  location = "us-central1"

  trigger_template {
    branch_name = "main"
    repo_name   = "my-repo"
  }
  service_account = google_service_account.cloudbuild_service_account.id
  filename = "cloudbuild.yaml"
}
