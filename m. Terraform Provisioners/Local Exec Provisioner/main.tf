resource "aws_instance" "web" {
  ami             = var.ami
  instance_type   = var.instance_type

  tags = {
    Name = "Webapp"
    Environment = "Dev"
  }

  provisioner "local-exec" {
    command = "echo The server IP address is ${self.public_ip} > ./hosts"
    on_failure = continue
  }

}

output "access_url" {
  value = "http://${aws_instance.web.public_ip}"
}