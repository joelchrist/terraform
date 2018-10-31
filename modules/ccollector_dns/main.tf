provider "digitalocean" {
  token = "${var.do_token}"
}

resource "digitalocean_domain" "root_domain" {
  name       = "${var.root_domain}"
  ip_address = "127.0.0.1"
}
