variable "region" {
  type = "string"
  description = "The region name"
}

variable "cluster_name"{
  type = "string"
  description = "The cluster name"
}

variable "gcp_account_file" {
  type = "string"
  description = "The location of the private key (in JSON format) for your GCP account"
}

variable "username" {
  type = "string"
  description = "The username for the master auth"
}

variable "password" {
  type = "string"
  description = "The password for the master auth"
}