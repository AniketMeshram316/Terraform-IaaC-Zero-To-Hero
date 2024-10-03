resource "aws_instance" "webapp" {
  ami = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "WebServer"
    Environment = "Development"
  }
}