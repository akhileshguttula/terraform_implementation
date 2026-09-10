terraform {
  backend "s3" {
    bucket = "terraform-iac-akhileshguttula"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

