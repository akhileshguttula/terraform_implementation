module "web01" {
  source = "./module/ec2"

  ami_id         = var.ami_id
  instance_type  = var.instance_type
  key_name       = var.key_name
  instance_name  = "web01"
  security_group = var.security_group
  environment    = var.environment
}


module "web02" {
  source = "./module/ec2"

  ami_id         = var.ami_id
  instance_type  = var.instance_type
  key_name       = var.key_name
  instance_name  = "web02"
  security_group = var.security_group
  environment    = var.environment

}



module "s3" {
  source      = "./module/s3"
  bucket_name = var.bucket_name
  environment = var.environment
}

