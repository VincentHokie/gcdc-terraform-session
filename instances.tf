resource "google_compute_instance" "allow-ping-instance" {
  name         = "test-allow-ping"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

  tags = ["allow-ping"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "${google_compute_network.gcdc-network.name}"
    access_config {
      nat_ip = ""
    }
  }

}

resource "google_compute_instance" "deny-ping-instance" {
  name         = "test-deny-ping"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

  tags = ["deny-ping"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "${google_compute_network.gcdc-network.name}"

    access_config {
      nat_ip = ""
    }
  }

}