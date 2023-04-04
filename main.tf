
provider "google" {
  project = "neat-resolver-378118"
  region  = "europe-west2"
  zone    = "europe-west2-c"
  credentials = var.gcp-creds
}


variable "gcp-creds" {
default= ""
}



resource "google_storage_bucket" "terraform2023" {
  name = "terraform2023bucket"
  location = "europe-west2"
  storage_class = "STANDARD"
  labels = {
   "key1" = "value1"
   "key2" = "value2"
 }
} 

resource "google_compute_instance" "dareit-vm-ci" {
  name         = "dareit-vm-tf-ci"
  machine_type = "e2-medium"
  zone         = "europe-west2-c"

  tags = ["dareit"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        managed_by_terraform = "true"
      }
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}
