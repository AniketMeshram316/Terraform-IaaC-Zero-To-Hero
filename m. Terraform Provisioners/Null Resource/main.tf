resource "aws_instance" "web" {
  count         = var.instance_count
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name        = "Webapp-${count.index}"
    Environment = "Dev-${count.index}"
  }
}