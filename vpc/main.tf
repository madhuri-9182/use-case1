provider "google" {

  project     = var.project_ID
}

# create a VPC 

resource "google_compute_network" "network" {

  name = var.my-network
}

# creating a subnet

resource "google_compute_subnetwork" "subnet" {
    name = var.subnet-name
    region = var.subnet-region
    network = google_compute_network.network.name
    ip_cidr_range =  var.subnet-cidr
}

# creating firewall

resource "google_compute_firewall" "vpc_network" {
  name = var.firewall_name
  network = google_compute_network.network.name
  source_ranges =var.source_ip_ranges
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }



 depends_on = [google_compute_instance.my_instance ]
}