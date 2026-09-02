output "web01_instance_id" {
  description = "The unique ID of the created EC2 instance"
  value       = module.web01.instance_id
}

output "web01_instance_public_ip" {
  description = "The public IP address assigned to the EC2 instance"
  value       = module.web01.instance_public_ip
}

output "web01_instance_private_ip" {
  description = "The private IP address assigned to the EC2 instance"
  value       = module.web01.instance_private_ip
}

output "web02_instance_id" {
  description = "The unique ID of the created EC2 instance"
  value       = module.web02.instance_id
}

output "web02_instance_public_ip" {
  description = "The public IP address assigned to the EC2 instance"
  value       = module.web02.instance_public_ip
}

output "web02_instance_private_ip" {
  description = "The private IP address assigned to the EC2 instance"
  value       = module.web02.instance_private_ip
}

output "s3_bucket_arn" {
  description = "The name arn of the bucket"
  value       = module.s3.s3_bucket_arn
}





output "ebs_arn" {
  description = "The name arn of the bucket"
  value       = module.ebs.ebs_arn
}
output "ebs_id" {
  description = "The name arn of the bucket"
  value       = module.ebs.ebs_id

}
output "create_time" {
  description = "The name arn of the bucket"
  value       = module.ebs.create_time
}
