
resource "google_project_iam_custom_role" "cloudbuild-custom-role" {
  role_id     = "cloudbuild-role"
  title       = "cloudbuild Custom Role"
  description = "A description"
  permissions = ["iam.roles.list"]
}
