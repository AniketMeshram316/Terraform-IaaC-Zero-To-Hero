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
  region  = "us-east-1"
  profile = "default"
}

provider "aws" {
  # Configuration options
  region  = "us-east-2"
  profile = "default"
  alias   = "us-east-2"
}

resource "aws_instance" "webserver" {
  provider      = aws
  ami           = "ami-0a5c3558529277641"
  instance_type = "t2.micro"

  tags = {
    Name         = "Server1"
    Environnment = "Dev"
  }
}

resource "aws_instance" "dbserver" {
  provider      = aws.us-east-2
  ami           = "ami-0a5c3558529277641"
  instance_type = "t2.micro"

  tags = {
    Name         = "Server2"
    Environnment = "Prod"
  }
}