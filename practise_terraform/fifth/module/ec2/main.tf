resource "aws_instance" "instance_tf" {
  ami           = var.ami_id
  instance_type = var.instance_type

  key_name = var.key_name

  vpc_security_group_ids      = [var.security_group]
  user_data                   = file("${path.module}/website.sh")
  user_data_replace_on_change = true

  tags = {
    Name        = "${var.instance_name}-${var.environment}"
    environment = var.environment
  }
}
