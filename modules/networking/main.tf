provider "google" {
  credentials = "${file(var.gcp_account_file)}"
  project = "joelchristnl"
  region = "${var.region}"
}

resource "google_compute_address" "ingress_loadbalancer_address" {
  name = "ingress-lb-address"
}