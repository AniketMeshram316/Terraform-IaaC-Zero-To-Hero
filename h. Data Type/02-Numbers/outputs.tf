output "instance_ips" {
  value = aws_instance.webapp[*].public_ip
}