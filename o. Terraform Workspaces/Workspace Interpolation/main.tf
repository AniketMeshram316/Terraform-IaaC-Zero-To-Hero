resource "aws_instance" "webserver" {
  count = lookup(var.instance_count, terraform.workspace)
  ami = lookup(var.ami, terraform.workspace)
  instance_type = lookup(var.instance_type, terraform.workspace)

  tags = {
    Name = "WebApp-${count.index}"
    Environment = "${terraform.workspace}"
  }
}