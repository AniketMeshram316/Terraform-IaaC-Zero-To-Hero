resource "aws_instance" "webapp" {
  ami           = var.ami
  instance_type = var.is_prod ? "t2.medium" : "t2.micro"

  tags = {
    Environment = var.is_prod ? "Production" : "Development"
    Name = var.is_prod ? "ProdApp" : "DevApp"
  }
}