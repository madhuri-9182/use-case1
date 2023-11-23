provider "google" {

  project     = var.project_id
  credentials = file("key.json")
}

# create a VPC 

resource "google_compute_network" "network" {

  name = var.network
  auto_create_subnetworks = "false"
}

# creating a subnet

resource "google_compute_subnetwork" "subnet" {
    name = var.subnet_name
    region = var.subnet_region
    network = google_compute_network.network.name
    ip_cidr_range =  var.subnet_cidr
}

# creating firewall

resource "google_compute_firewall" "vpc_network" {
  name = var.firewall_name
  network = google_compute_network.network.name
  source_ranges =var.source_ip_ranges
  allow {
    protocol = var.protocol
    ports    = var.ports
  }
}
