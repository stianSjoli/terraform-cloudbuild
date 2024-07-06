resource "google_service_account" "cb_sa" {
  account_id = "cloudbuild-serviceaccount"
}

resource "google_cloudbuild_trigger" "cb_trigger" {
  trigger_template {
    branch_name = "main"
    repo_name   = "binary-authz"
  }

  service_account = google_service_account.cb_sa.id
  filename        = "cloudbuild.yaml"
  depends_on = [
    google_project_iam_member.act_as
  ]
}

resource "google_project_iam_member" "act_as" {
  project = var.project_id
  role    = "roles/iam.serviceAccountUser"
  member  = "serviceAccount:${google_service_account.cb_sa.email}"
}

