provider "google" {
  credentials = "${file(var.gcp_account_file)}"
  project = "joelchristnl"
  region = "${var.region}"
}

//Get all available zones in our region
data "google_compute_zones" "available"{
  region = "${var.region}"
}

//Create a k8s cluster
resource "google_container_cluster" "primary" {
  name = "${var.cluster_name}"

  zone = "${data.google_compute_zones.available.names[0]}"
  additional_zones = ["${slice(data.google_compute_zones.available.names, 1, length(data.google_compute_zones.available.names))}"]

  node_pool {
    node_count = 2

    autoscaling {
      max_node_count = 2
      min_node_count = 2
    }

    management {
      auto_repair = true
      auto_upgrade = false
    }
  }

  maintenance_policy {
    "daily_maintenance_window" {
      start_time = "03:00"
    }
  }

  min_master_version = "1.8.7-gke.1"
  node_version = "1.8.7-gke.1"

  master_auth {
    username = "${var.username}"
    password = "${var.password}"
  }
}