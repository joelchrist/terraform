module "dns" "joelchrist.nl" {
  source = "../../modules/dns"
  root_domain = "joelchrist.nl"
  do_token = "${var.do_token}"
}

module "buckets" "buckets" {
  source = "../../modules/buckets"
  region = "${var.gcp_region}"
  gcp_account_file = "${var.gcp_account_file}"
}