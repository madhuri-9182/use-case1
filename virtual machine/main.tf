# vm
resource "google_compute_instance" "instance" {
  boot_disk {
    device_name = var.vm_device_name
 
    initialize_params {
      image = var.image #projects/debian-cloud/global/images/debian-11-bullseye-v20231010
      size  = var.size
      type  = var.disk_type
    }
  }
 
  machine_type = var.machine_type
  name         = var.instance_name
 
  network_interface {
    access_config {
    }
    network = google_compute_network.network.name
    subnetwork = google_compute_subnetwork.subnet.name
  }
 
  tags = var.firewall_tag
  zone = var.zone
}
 