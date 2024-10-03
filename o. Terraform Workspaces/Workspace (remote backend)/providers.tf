terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.67.0"
    }
  }

  backend "s3" {
    bucket = "backend-statefile-bucket"
    key    = "dev/state/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "statefile-table"
  }
}

provider "aws" {
  # Configuration options
  region = var.region
  profile = var.profile
}