output "domain_name" {
  description = "Public domain name of EC2 instance"
  value       = aws_instance.web.public_dns
  sensitive = false
}

output "ec2_name" {
  value = aws_instance.web.id
  sensitive = false
}