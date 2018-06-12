module "vps" "vps" {
  source = "../../modules/vps"
  gcp_account_file = "${var.gcp_account_file}"
  region = "${var.gcp_region}"
  gcp_zone = "europe-west1-b"
}

module "dns" "joelchrist.nl" {
  source = "../../modules/dns"
  root_domain = "joelchrist.nl"
  do_token = "${var.do_token}"
  root_ip = "${module.vps.external_ip}"
}

module "buckets" "buckets" {
  source = "../../modules/buckets"
  region = "${var.gcp_region}"
  gcp_account_file = "${var.gcp_account_file}"
}
