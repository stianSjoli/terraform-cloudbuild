
data "google_iam_policy" "admin" {
  binding {
    role = "roles/storage.admin"
    members = [
      "serviceAccount:terraform-cloudbuild@security-428910.iam.gserviceaccount.com",
    ]
  }
}

resource "random_id" "bucket_prefix" {
  byte_length = 8
}

resource "google_storage_bucket" "static-website_bucket" {
  name          = "${random_id.bucket_prefix.hex}-static-website_bucket"
  location      = "US"
  storage_class = "STANDARD"
  uniform_bucket_level_access = true
  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}

resource "google_storage_bucket_iam_policy" "policy" {
  bucket = google_storage_bucket.static-website_bucket.name
  policy_data = data.google_iam_policy.admin.policy_data
  depends_on = [google_storage_bucket.static-website_bucket]
}

