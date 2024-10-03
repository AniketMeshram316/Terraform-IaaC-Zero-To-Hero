resource "aws_instance" "webserver" {
  ami           = var.ami
  instance_type = var.instance_type
  security_groups = ["allow_ssh_http"]

  tags = {
    Name        = "Webapp"
    Environment = "Development"
  }
}