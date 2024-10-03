resource "aws_instance" "webapp" {
  ami           = lookup(var.ami, var.region, "Default AMI")
  instance_type = var.instance_type
  tags          = var.instance_tags
}