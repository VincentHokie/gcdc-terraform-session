resource "google_compute_firewall" "allow-ping" {
  name    = "test-firewall-allow-ping"
  network = "${google_compute_network.gcdc-network.name}"

  allow {
    protocol = "icmp"
  }

  target_tags = ["allow-ping"]
}