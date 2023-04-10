
resource "google_storage_bucket" "bucket" {
  name          = "task_7_terraform_ci"
  project       = "neat-resolver-378118"
  storage_class = "standard"
  location      = "EU"
}
 
