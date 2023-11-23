provider "google" {
  credentials = file("key.json")
}

module "folder" {
  source = "./folder"
  folder_name = var.folder_name
  org_id = var.org_id
}

module "sub folder" {
  source = "./sub folder"
  sub_folder = var.sub_folder
  folder_id  = var.folder_id
}

module "project" {
    source = "./project"
    project_name = var.project_name
    project_id = var.project_id
    sub_folder_id  = var.sub_folder_id
}

module "service_account" {
    source = "./service account"
    service_id  = var.service_id
    project_id   = var.project_id
    service_display = var.service_display
    role1  = var.role1
    role2  = var.role2
    role3  = var.role3
    role4  = var.role4
    role5  = var.role5
    role6  = var.role6
    role7  = var.role7
    role8  = var.role8 
    role9  = var.role9
    role10 = var.role10
    }

module "vpc" {
    source = "./vpc"
    project_id = var.project_id
    network= var.network
    subnet_name = var.subnet_name
    subnet_region = var.subnet_region
    subnet_cidr =  var.subnet_cidr
    firewall_name = var.firewall_name
    source_ip_ranges =var.source_ip_ranges
    protocol = var.protocol
    ports    = var.ports
}

module "instance" {
  source = "./virtual machine"
  project_id = var.project_id
  vm_device_name = var.vm_device_name
  image = var.image
  size  = var.size
  disk_type  = var.disk_type
  machine_type = var.machine_type
  instance_name  = var.instance_name
  firewall_tag = var.firewall_tag
  zone = var.zone
  network_interface = module.vpc.network.name
  subnetwork_interface = module.vpc.subnetwork.name
}

module "bucket" {
   source = "./cloud storage"
}