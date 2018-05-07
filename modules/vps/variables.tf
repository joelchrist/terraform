variable "region" {
  type = "string"
  description = "The region name"
}

variable "gcp_account_file" {
  type = "string"
  description = "The location of the private key (in JSON format) for your GCP account"
}

variable "gcp_zone" {
  type = "string"
  description = "The zone in which the vps will be created"
}