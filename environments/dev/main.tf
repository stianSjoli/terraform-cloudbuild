# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


locals {
  env = "dev"
}

provider "google" {
  project = "${var.project}"
}

module "project-factory" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 15.0"

  name                 = "project-sandbox"
  random_project_id    = true
  usage_bucket_name    = "usage-report-bucket"
  usage_bucket_prefix  = "integration"
  billing_account      = "My Billing Account 1"
  activate_apis        = ["cloudbilling.googleapis.com"]
}



