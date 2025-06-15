#!/bin/bash

# Pull secret from GCP
gcloud secrets versions access latest --secret="terraform-creds" > /tmp/terraform-creds.json

# Export environment variable so Terraform can use it
export GOOGLE_APPLICATION_CREDENTIALS="/tmp/terraform-creds.json"

# Run Terraform commands
terraform init
terraform plan
terraform apply 