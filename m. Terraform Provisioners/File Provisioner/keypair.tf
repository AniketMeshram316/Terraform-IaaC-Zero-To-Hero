resource "aws_key_pair" "terraformkey" {
  key_name   = "terraformkey"
  public_key = file("demo-key.pub") #supply a publickey : ssh-keygen -f demo-key
}