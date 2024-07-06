resource "google_service_account" "cb_sa" {
  account_id = "build-sa"
}

resource "google_cloudbuild_trigger" "cb_trigger" {
  trigger_template {
    branch_name = "main"
    repo_name   = "binary-authz"
  }

  service_account = google_service_account.cb_sa.id
  filename        = "cloudbuild.yaml"
  depends_on = [
    google_project_iam_member.act_as,
    google_project_iam_member.logs_writer
  ]
}

resource "google_project_iam_member" "act_as" {
  project = var.project_id
  role    = "roles/iam.serviceAccountUser"
  member  = "serviceAccount:${google_service_account.cb_sa.email}"
}

resource "google_project_iam_member" "logs_writer" {
  project = var.project_id
  role    = "roles/logging.logWriter"
  member  = "serviceAccount:${google_service_account_cb_sa.email}"
}
