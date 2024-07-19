
terraform {
  backend "gcs" {
    bucket = "security-428910-terraform-bucket"
    prefix = "env/dev"
  }
}
