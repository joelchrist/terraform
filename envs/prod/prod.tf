module "cluster" "primary" {
  source = "../../modules/cluster"
  cluster_name = "joelchrist-prod"
  region = "${var.gcp_region}"
  username = "${var.cluster_username}"
  password = "${var.cluster_password}"
  gcp_account_file = "${var.gcp_account_file}"
}

module "networking" "networking" {
  source = "../../modules/networking"
  region = "${var.gcp_region}"
  gcp_account_file = "${var.gcp_account_file}"
}

module "dns" "joelchrist.nl" {
  source = "../../modules/dns"
  root_domain = "joelchrist.nl"
  do_token = "${var.do_token}"
  loadbalancer_static_ip = "${module.networking.ingress-lb-address}"
}

module "buckets" "buckets" {
  source = "../../modules/buckets"
  region = "${var.gcp_region}"
  gcp_account_file = "${var.gcp_account_file}"
}