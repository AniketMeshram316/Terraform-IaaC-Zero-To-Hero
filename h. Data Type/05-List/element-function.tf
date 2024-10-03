# variable "instance_type" {
#   type    = list(string)
#   default = ["t2.micro", "t2.medium", "t2.large"]
# }

# resource "aws_instance" "webapp" {
#   count         = length(var.instance_type)
#   ami           = var.ami
#   instance_type = element(var.instance_type, count.index)

#   tags = {
#     Name = "webserver-${count.index}"
#   }
# }

# output "instance_type" {
#   value = aws_instance.webapp[*].public_ip
# }