provider "google" {
  credentials = "${file(var.gcp_account_file)}"
  project = "joelchristnl"
  region = "${var.region}"
}

resource "google_compute_instance" "server" {
  name         = "joelchristnl"
  machine_type = "n1-standard-1"
  zone = "${var.gcp_zone}"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1404-lts"
    }
  }

  can_ip_forward = true

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata {
    sshKeys = "jjlchrist:${file("~/.ssh/id_rsa.pub")}"
  }

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}