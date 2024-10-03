resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = aws_key_pair.terraformkey.key_name

  #EC2 user data through file
  user_data = file("nginx.sh")

  tags = {
    Name = "Webapp"
  }
}