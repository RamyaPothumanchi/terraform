output "bucket_arn" {
  value       = aws_s3_bucket.audit_log.arn
  description = "The ARN of the generated S3 bucket"
}

output "instance_private_ip" {
  value       = aws_instance.app_server.private_ip
  description = "Private IP address of the EC2 app server"
}
