output "instance_ip" {
  value = aws_instance.webserver[*].public_ip
}

output "instance_tags" {
  value = aws_instance.webserver.*.tags
}