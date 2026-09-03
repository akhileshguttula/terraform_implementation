#!/bin/bash

terraform init
terraform validate
terraform plan -var-file="qa.tfvars" 
terraform apply -var-file="qa.tfvars" -auto-approve
