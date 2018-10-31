terraform {
  backend "gcs" {
    bucket  = "terraform-state-joelchrist"
    prefix  = "env/ccollector"
    credentials = "../../credentials/gcp-terraform.json"
  }
}
