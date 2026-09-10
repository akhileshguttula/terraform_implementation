output "instance_id" {
  description = "The unique ID of the created EC2 instance"
  value       = aws_instance.instance_tf.id
}

output "instance_public_ip" {
  description = "The public IP address assigned to the EC2 instance"
  value       = aws_instance.instance_tf.public_ip
}

output "instance_private_ip" {
  description = "The private IP address assigned to the EC2 instance"
  value       = aws_instance.instance_tf.private_ip
}

output "s3_bucket_id" {
  description = "The name (id) of the bucket"
  value       = aws_s3_bucket.bucket_data.id
}
