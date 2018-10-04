module "dns" "joelchrist.nl" {
  source = "../../modules/dns"
  root_domain = "joelchrist.nl"
  do_token = "${var.do_token}"
}

