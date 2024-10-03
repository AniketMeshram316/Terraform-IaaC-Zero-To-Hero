resource "aws_instance" "webapp" {
  count         = var.instance_count
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "webapp-${count.index}"
  }
}