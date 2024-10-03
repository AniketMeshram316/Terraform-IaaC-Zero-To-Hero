output "access_url" {
  value = "http://${aws_instance.web[*].public_ip}"
}