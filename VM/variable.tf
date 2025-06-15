variable "project_id" {
  default = "woven-century-463013-c5"
}
variable "region" {
  default = "asia-east1"
}
variable "zone" {
  default = "asia-east1-c"
}
variable "gcp_credentials_file" {
  description = "Path to the GCP credentials JSON file"
  type        = string
}
