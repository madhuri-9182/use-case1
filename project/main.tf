resource "google_project" "project1" {
  name       = "project1"
  project_id = "project1"
  org_id     = "YOUR_ORG_ID"
  folder_id  = google_folder.subfolder.name
}