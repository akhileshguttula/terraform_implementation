resource "aws_instance" "instance_tf" {
  ami           = var.ami_id
  instance_type = var.instance_type

  key_name = var.key_name

  vpc_security_group_ids = [var.security_group]

  tags = {
    Name        = "${var.instance_name}-${var.environment}"
    environment = var.environment
  }
}
