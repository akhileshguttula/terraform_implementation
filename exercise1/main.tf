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

  key_name      = "terraform_implementation_kp"

  vpc_security_group_ids = ["sg-02ad7c6642356c012"]

  tags = {
    Name = "instance_1"
  }
}
