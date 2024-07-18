
terraform {
  backend "gcs" {
    bucket = "terraform-425521-bucket"
    prefix = "env/dev"
  }
}
