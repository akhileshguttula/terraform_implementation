resource "aws_ebs_volume" "my_ebs" {
  availability_zone = var.availability_zone
  size              = var.size
  type              = var.type


  tags = {
    Name = var.ebs_name
  }
}
