terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.6.3"
    }
  }
}

resource "random_pet" "server_name" {
  length = 3
  prefix = "ec2"
  separator = "-"
}

output "server_name" {
  value = random_pet.server_name
  description = "server name to be used"
  sensitive = true
}