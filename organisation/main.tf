# create a organisation
data "google_organization" "org" {
  domain = "mynanni.co.in"
}

resource "google_folder" "Department" {
    display_name = "dep"
    parent = data.google_organization.org.name
  
}