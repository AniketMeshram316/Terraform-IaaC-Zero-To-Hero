variable "profile" {
  default = "default"
}

variable "region" {
  default = "us-east-1"
}

variable "ami" {
  default = "ami-0a5c3558529277641"
}

variable "is_prod" {
  description = "Boolean flag indicating if the environment is production"
  type = bool
#   default = false
}

