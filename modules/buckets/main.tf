provider "google" {
  credentials = "${file(var.gcp_account_file)}"
  project = "joelchristnl"
  region = "${var.region}"
}

resource "google_storage_bucket" "shorty_bucket" {
  name = "shorty-url-shortener"
  location = "europe-west1"
}

resource "google_storage_bucket_acl" "shorty_acl" {
  bucket = "${google_storage_bucket.shorty_bucket.name}"
  predefined_acl = "publicRead"
}