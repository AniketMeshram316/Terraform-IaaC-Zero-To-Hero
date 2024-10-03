resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = aws_key_pair.terraformkey.key_name

  #EC2 user data through variable
  user_data = var.user_data

  tags = {
    Name = "Webapp"
  }
}