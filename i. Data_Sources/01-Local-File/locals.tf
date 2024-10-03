terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.5.2"
    }
  }
}

provider "local" {
  # Configuration options
}

data "local_file" "script" {
  filename = "./script.sh"
}

output "file_content" {
  value = data.local_file.script.content
}