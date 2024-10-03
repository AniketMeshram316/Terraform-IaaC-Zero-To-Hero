variable "profile" {
  default = "default"
}

variable "region" {
  default = "us-east-1"
}

variable "ami" {
  default = "ami-0a5c3558529277641"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "instance_count" {
  type    = number
  default = 2
}

variable "disable_api_termination" {
  type = bool
  description = "controls whether the instance can be terminated using the AWS Management Console"
}