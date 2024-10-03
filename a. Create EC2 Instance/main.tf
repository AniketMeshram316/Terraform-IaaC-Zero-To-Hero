terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.66.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

resource "aws_instance" "webserver" {
  ami           = "ami-0a5c3558529277641"
  instance_type = "t2.micro"

  tags = {
    Name         = "Server1"
    Environnment = "Dev"
  }
}