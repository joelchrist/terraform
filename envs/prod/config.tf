terraform {
  backend "gcs" {
    bucket  = "terraform-state-joelchrist"
    prefix  = "env/prod"
    credentials = "../../credentials/gcp-terraform.json"
  }
}
