resource "aws_s3_bucket" "bucket_data" {
  bucket = "${var.bucket_name}-${var.environment}"

  tags = {
    Name        = var.bucket_name
    Environment = var.environment
  }
}
