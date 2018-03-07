output "ingress-lb-address" {
  value = "${google_compute_address.ingress_loadbalancer_address.address}"
}