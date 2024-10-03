terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.5.2"
    }
  }
}

resource "local_file" "service_log" {
  content = var.log_data
  filename = var.log_data
}