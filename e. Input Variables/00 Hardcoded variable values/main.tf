terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }
}

# Configuring the AWS provider
provider "aws" {
  region = "us-east-1"
  profile = "default"
}

# EC2 Resource
resource "aws_instance" "web" {
  ami           = "ami-0a5c3558529277641"
  instance_type = "t2.micro"

  tags = {
    Name = "WebServer"
  }
}