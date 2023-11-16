resource "google_service_account" "service_account" {
  account_id   = var.service_id
  project      = var.project_id
  display_name = var.service_display
}
 
resource "google_project_iam_binding" "iam_binding" {
  project = var.project_id
  role    = var.roles
 
  members = [
    "serviceAccount:${google_service_account.service_account.email}"
  ]
}