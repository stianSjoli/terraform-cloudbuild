
resource "random_pet" "pet" {
  keepers = {
    some_id = "1"
  }
  length = 1
}
