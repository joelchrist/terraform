module "ccollector_dns" "ccollector.app" {
  source = "../../modules/ccollector_dns"
  root_domain = "ccollector.app"
  do_token = "${var.do_token}"
}
