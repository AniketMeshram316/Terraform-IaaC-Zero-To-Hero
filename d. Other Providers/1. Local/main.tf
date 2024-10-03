terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.5.1"
    }
  }
}

resource "local_file" "login" {
  content  = "echo logging in"
  filename = "./login.sh"
}

resource "local_sensitive_file" "password" {
  content  = ""
  filename = ""
}