
resource "aws_instance" "instance_tf" {
  ami           = var.ami_id
  instance_type = var.instance_type

  key_name      = var.key_name

  vpc_security_group_ids = [var.security_group]

  tags = {
    Name = var.instance_name
  }
}

resource "aws_s3_bucket" "bucket_data" {
  bucket = var.bucket_name

  tags = {
    Name        = var.bucket_name
    Environment = "Dev"
  }
}
