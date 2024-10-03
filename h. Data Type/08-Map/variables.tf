variable "profile" {
  default = "default"
}

variable "region" {
  type = string
  # default = "us-east-1"
}

variable "ami" {
  type = map(string)
  default = {
    "us-east-1" = "ami-0a5c3558529277641"
    "us-east-2" = "ami-0453ce6279422709a"
  }
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "instance_tags" {
  description = "EC2-tags"
  type        = map(string)
  default = {
    "Name"        = "MyApp"
    "Environment" = "Dev"
  }
}