terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "instance_tf" {
  ami           = "ami-0b6d9d3d33ba97d99"
  instance_type = "t3.micro"

  key_name = "terraform_implementation_kp"

  vpc_security_group_ids = ["sg-02ad7c6642356c012"]

  tags = {
    Name = "instance_1"
  }
}


resource "aws_ebs_volume" "my_ebs_volume" {
  # The EBS volume MUST be in the exact same Availability Zone as the EC2 instance
  availability_zone = aws_instance.instance_tf.availability_zone
  size              = 20 # Size in GiB
  type              = "gp3"

  tags = {
    Name = "terraform-implememted-ebs"
  }
}

resource "aws_volume_attachment" "ebs_attachment" {
  device_name = "/dev/sdf"
  volume_id   = aws_ebs_volume.my_ebs_volume.id
  instance_id = aws_instance.instance_tf.id
}
