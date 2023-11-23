resource "google_service_account" "service_account" {
  account_id   = var.service_id
  project      = var.project_id
  display_name = var.service_display
}
 
resource "google_project_iam_binding" "role1" {
  project = var.project_id
  role    = var.role1
 
  members = [
    "serviceAccount:${google_service_account.service_account.email}"
  ]
}

resource "google_project_iam_binding" "role2" {
  project = var.project_id
  role    = var.role2
 
  members = [
    "serviceAccount:${google_service_account.service_account.email}"
  ]
}

resource "google_project_iam_binding" "role3" {
  project = var.project_id
  role    = var.role3
 
  members = [
    "serviceAccount:${google_service_account.service_account.email}"
  ]
}


resource "google_project_iam_binding" "role4" {
  project = var.project_id
  role    = var.role4
 
  members = [
    "serviceAccount:${google_service_account.service_account.email}"
  ]
}

resource "google_project_iam_binding" "role5" {
  project = var.project_id
  role    = var.role5
 
  members = [
    "serviceAccount:${google_service_account.service_account.email}"
  ]
}

resource "google_project_iam_binding" "role6" {
  project = var.project_id
  role    = var.role6
 
  members = [
    "serviceAccount:${google_service_account.service_account.email}"
  ]
}

resource "google_project_iam_binding" "role7" {
  project = var.project_id
  role    = var.role7
 
  members = [
    "serviceAccount:${google_service_account.service_account.email}"
  ]
}

resource "google_project_iam_binding" "role8" {
  project = var.project_id
  role    = var.role8
 
  members = [
    "serviceAccount:${google_service_account.service_account.email}"
  ]
}

resource "google_project_iam_binding" "role9" {
  project = var.project_id
  role    = var.role9
 
  members = [
    "serviceAccount:${google_service_account.service_account.email}"
  ]
}

resource "google_project_iam_binding" "role10" {
  project = var.project_id
  role    = var.role10
 
  members = [
    "serviceAccount:${google_service_account.service_account.email}"
  ]
}