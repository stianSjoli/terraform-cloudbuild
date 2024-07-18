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
