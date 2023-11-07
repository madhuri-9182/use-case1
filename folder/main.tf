resource "google_folder" "my_folder" 
{
  display_name = "my-folder"
  parent       = "organizations/123456789"
}

resource "google_folder" "subfolder" 
{
  display_name = "My Subfolder"
  parent       = google_folder.root_folder.name
}

 