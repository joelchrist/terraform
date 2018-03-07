variable "root_domain" {
  type = "string"
  description = "The root domain to create."
}

variable "do_token" {
  type = "string"
  description = "The DigitalOcean token"
}

variable "loadbalancer_static_ip" {
  type = "string"
  description = "The static IP of the ingress loadbalancer"
}
