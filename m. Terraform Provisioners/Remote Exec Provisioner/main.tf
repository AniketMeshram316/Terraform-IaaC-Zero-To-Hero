resource "aws_instance" "web" {
  ami             = var.ami
  instance_type   = var.instance_type
  key_name        = aws_key_pair.terraformkey.key_name
  security_groups = ["allow_ssh_http"]

  tags = {
    Name = "Webapp"
  }

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("demo-key")
    host        = self.public_ip
  }

  provisioner "file" {
    source      = "nginx.sh"
    destination = "/tmp/nginx.sh"
  }

  provisioner "remote-exec" {
    inline = [ 
      "chmod +x /tmp/init.sh",
      "sh /tmp/init.sh"
     ]
  }
}