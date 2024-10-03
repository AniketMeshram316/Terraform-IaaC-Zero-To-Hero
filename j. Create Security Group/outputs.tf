output "publicIP" {
  value = aws_instance.webserver.public_ip
}