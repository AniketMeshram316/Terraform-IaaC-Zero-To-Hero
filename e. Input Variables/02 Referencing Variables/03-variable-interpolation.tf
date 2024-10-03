terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.5.1"
    }
  }
}

variable "filename" {
  description = "filename to be used for storing logs"
  type        = string
  default     = "./ec2"
}

variable "log_data" {
  description = "log data stored in the file"
  type        = string
  default     = "[Info]: Service started"
}

resource "local_file" "service_log" {
  content  = var.log_data
  filename = "${var.filename}.log"
}

