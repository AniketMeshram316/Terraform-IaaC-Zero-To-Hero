resource "aws_instance" "webapp" {
  count         = var.instance_count
  ami           = var.ami
  instance_type = var.instance_type
  disable_api_termination = var.disable_api_termination

  tags = {
    Name = "webapp-${count.index}"
  }
}