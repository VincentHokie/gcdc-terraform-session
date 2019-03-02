resource "google_compute_network" "gcdc-network" {
  name                    = "vince"
  auto_create_subnetworks = "true"
}