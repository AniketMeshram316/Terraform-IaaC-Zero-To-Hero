# terraform {
#   required_providers {
#     aws = {
#       source = "hashicorp/aws"
#       version = "5.66.0"
#     }
#   }
# }

# provider "aws" {
#   # Configuration options
#   region = "us-east-1"
# }


# variable "ami" {
#   description = "This is the image id use for the server"
#   default     = "ami-0a5c3558529277641"
#   type        = string
#   sensitive   = false
# }

# variable "instance_type" {
#   default = "t2.micro"
# }

# resource "aws_instance" "webserver" {
#   ami           = var.ami
#   instance_type = var.instance_type

#   tags = {
#     Name         = "Server1"
#     Environnment = "Dev"
#   }
# }