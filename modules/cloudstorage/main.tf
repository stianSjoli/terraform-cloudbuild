module "cloudstorage" {
  source  = "terraform-google-modules/cloud-storage/google"
  version = "~> 6.0"
  project_id  = "security-428910"
  names = ["homePage"]
  prefix = "static-site"
  set_admin_roles = true
  admins = ["group:foo-admins@example.com"]
  versioning = {
    first = true
  }
  bucket_admins = {
    second = "@example.com,user:eggs@example.com"
  }
}
