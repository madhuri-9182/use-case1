provider "google" 
{
  credentials = file("path/to/your/credentials.json")
  project    = "your-gcp-project"
  region     = "us-central1" 
}