variable "do_token" {
  type = "string"
  description = "The digitalocean API token"
}

variable "gcp_region" {
  type = "string"
  description = "The GCP region"
  default = "europe-west1"
}

variable "cluster_username" {
  type = "string"
  description = "The username for the cluster master auth"
}
variable "cluster_password" {
  type = "string"
  description = "The username for the cluster master auth"
}

variable "gcp_account_file" {
  type = "string"
  description = "The location of the private key (in JSON format) for your GCP account"

}