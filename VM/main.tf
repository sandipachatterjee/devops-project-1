provider "google" {
  credentials = var.gcp_credentials_file
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}

resource "google_compute_instance" "default" {
  name         = "devops-vm"
  machine_type = "e2-micro"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "ubuntu-2204-jammy-v20230616"
    }
  }

  network_interface {
    network = "default"
    access_config {} # for external IP
  }

  tags = ["http-server", "https-server","need-to-delete"]

  metadata_startup_script = <<-EOT
    sudo apt update
    sudo apt install -y docker.io
    sudo systemctl enable docker
  EOT
}


