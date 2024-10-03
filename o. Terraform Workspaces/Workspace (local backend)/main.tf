resource "aws_instance" "webserver" {
  count         = var.instance_count
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name        = "WebApp-${count.index}"
    Environment = "${terraform.workspace}"
  }
}