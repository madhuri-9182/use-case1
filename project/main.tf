resource "google_project" "project" {
    name = var.project_name
    project_id = var.project_id
    org_id   = var.org_id
    folder_id  = var.sub_folder_id
}