
output "ec2_public_ip" {
  description = "EC2 public IPv4 address"
  value       = aws_instance.app.public_ip
}

output "website_url" {
  description = "Frontend website URL"
  value       = "http://${aws_instance.app.public_ip}"
}

output "api_url" {
  description = "Backend API through Nginx"
  value       = "http://${aws_instance.app.public_ip}/api/hello"
}
