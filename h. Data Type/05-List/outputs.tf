output "instance_type" {
  value = aws_instance.webapp[*].public_ip
}