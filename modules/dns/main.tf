resource "digitalocean_domain" "root_domain" {
  name       = "${var.root_domain}"
  ip_address = "188.226.166.36" //TODO: Get from droplet that will be created in terraform
}

resource "digitalocean_record" "keybase_verification_txt" {
  domain = "${digitalocean_domain.root_domain.id}"
  type   = "TXT"
  name   = "_keybase"
  value  = "keybase-site-verification=ODB66wczTVP8BA9jx8Il7dLNn2yzUnx8NB9uhnN12bw"
}

resource "digitalocean_record" "wildcard_cname" {
  domain = "${digitalocean_domain.root_domain.id}"
  type   = "CNAME"
  name   = "*"
  value  = "${var.root_domain}."
}

resource "digitalocean_record" "moreappstaging_cname" {
  domain = "${digitalocean_domain.root_domain.id}"
  type   = "CNAME"
  name   = "moreappstaging"
  value  = "web.staging.moreapp.com."
}

resource "digitalocean_record" "google_drive" {
  domain = "${digitalocean_domain.root_domain.id}"
  type = "CNAME"
  name = "drive"
  value = "ghs.googlehosted.com."
}

resource "digitalocean_record" "google_calendar" {
  domain = "${digitalocean_domain.root_domain.id}"
  type = "CNAME"
  name = "calendar"
  value = "ghs.googlehosted.com."
}

resource "digitalocean_record" "google_mail" {
  domain = "${digitalocean_domain.root_domain.id}"
  type = "CNAME"
  name = "mail"
  value = "ghs.googlehosted.com."
}

resource "digitalocean_record" "google_site_verification" {
  domain = "${digitalocean_domain.root_domain.id}"
  type = "TXT"
  name = "@"
  value = "google-site-verification=EnWUnEJy_B60C_fFOjFE2jTxHcUavq5Dw-MaIMiZYzQ"
}

resource "digitalocean_record" "google_mail_1" {
  domain = "${digitalocean_domain.root_domain.id}"
  type = "MX"
  name = "@"
  value = "aspmx.l.google.com."
  priority = "1"
}

resource "digitalocean_record" "google_mail_2" {
  domain = "${digitalocean_domain.root_domain.id}"
  type = "MX"
  name = "@"
  value = "alt1.aspmx.l.google.com."
  priority = "5"
}

resource "digitalocean_record" "google_mail_3" {
  domain = "${digitalocean_domain.root_domain.id}"
  type = "MX"
  name = "@"
  value = "alt2.aspmx.l.google.com."
  priority = "5"
}

resource "digitalocean_record" "google_mail_4" {
  domain = "${digitalocean_domain.root_domain.id}"
  type = "MX"
  name = "@"
  value = "alt3.aspmx.l.google.com."
  priority = "10"
}

resource "digitalocean_record" "google_mail_5" {
  domain = "${digitalocean_domain.root_domain.id}"
  type = "MX"
  name = "@"
  value = "alt4.aspmx.l.google.com."
  priority = "10"
}