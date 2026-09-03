
variable "ami_id" {
  description = "The Amazon Machine Image (AMI) ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The size/type of the EC2 instance"
  type        = string
}

variable "instance_name" {
  description = "Value for the Name tag of the EC2 instance"
  type        = string
}


variable "key_name" {
  description = "key pair name"
  type        = string
}

variable "security_group" {
  description = "instance security group id "
  type        = string
}

variable "environment" {
  description = "environent name"
  type        = string
}
