variable "my-network" {
  
}

variable "project_ID" {
  type           = string
  description  = "Project ID"
  default        = "<your-project-id>"
}
variable "subnet-name"{

}
variable "subnet-region" {
  
}
variable "subnet-cidr" {
  
}
variable "firewall_name" {
  
}

variable "source_ip_ranges" {
  type    = list(string)
}
