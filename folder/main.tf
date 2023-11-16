provider "google" {
  credentials = file("key.json")
}

resource "google_folder" "my_folder" {
  display_name = var.folder_name
  parent       = var.org_id
}
