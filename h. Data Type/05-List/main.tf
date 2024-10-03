resource "aws_instance" "webapp" {
  count         = length(var.instance_type)
  ami           = var.ami
  instance_type = var.instance_type[count.index]

  tags = {
    Name = "webserver-${count.index}-${var.instance_type[count.index]}"
  }
}