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

module "web03" {
  source = "./module/ec2"

  ami_id         = var.ami_id
  instance_type  = var.instance_type
  key_name       = var.key_name
  instance_name  = "web03"
  security_group = var.security_group
  environment    = var.environment

}


module "s3" {
  source      = "./module/s3"
  bucket_name = var.bucket_name
  environment = var.environment
}

module "ebs" {
  source            = "./module/ebs"
  availability_zone = var.availability_zone
  size              = var.size
  ebs_name          = var.ebs_name
  type              = var.type
}





module "security_group" {
  source = "./module/security_group"

  name   = "cafe_sg"
  vpc_id = var.vpc_id

  tags = {
    Name = "cafe_sg"
  }
}





