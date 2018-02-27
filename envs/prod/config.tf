terraform {
  backend "gcs" {
    bucket  = "joelchristnl-terraform-state"
    prefix  = "env/prod"
    credentials = "../../credentials/gcp-terraform.json"
  }

}

provider "digitalocean" {
  token = "${var.do_token}"
}