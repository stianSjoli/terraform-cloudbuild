
resource "google_storage_bucket" "static-website_bucket" {
  name          = "static-website_bucket"
  location      = "US"
  storage_class = "STANDARD"
  uniform_bucket_level_access = true
  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}
