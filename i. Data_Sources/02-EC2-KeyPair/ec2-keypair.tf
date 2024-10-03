data "aws_key_pair" "terraform_key" {
  key_name = "DevOps_N.Virginia_Key"
}

resource "aws_instance" "webapp" {
  ami = "ami-0a5c3558529277641"
  instance_type = "t2.micro"
  key_name = data.aws_key_pair.terraform_key.key_name
}