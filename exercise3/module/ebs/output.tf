output "ebs_id" {
  description = "The unique ID of the created EC2 instance"
  value       = aws_ebs_volume.my_ebs.id
}

output "create_time" {
  description = "The public IP address assigned to the EC2 instance"
  value       = aws_ebs_volume.my_ebs.create_time
}

output "ebs_arn" {
  description = "The private IP address assigned to the EC2 instance"
  value       = aws_ebs_volume.my_ebs.arn
}
