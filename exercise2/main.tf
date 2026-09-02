
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

resource "aws_ebs_volume" "my_ebs_volume" {
  availability_zone  = aws_instance.instance_tf.availability_zone
  type              = var.type
  size              = var.size

  tags = {
    Name = var.ebs_name
  }
}

resource "aws_volume_attachment" "ecs_ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.my_ebs_volume.id
  instance_id = aws_instance.instance_tf.id
}
