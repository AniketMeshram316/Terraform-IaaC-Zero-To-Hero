variable "region" {
  default = "us-east-1"
}

variable "profile" {
  default = "default"
}

variable "ami" {
  default = "ami-0a5c3558529277641"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "instance_count" {
  default = 3
  type    = number
}