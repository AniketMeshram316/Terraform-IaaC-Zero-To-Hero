resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = aws_key_pair.terraformkey.key_name
  security_groups = [ "allow_ssh_http" ]

  tags = {
    Name = "Webapp"
  }
}