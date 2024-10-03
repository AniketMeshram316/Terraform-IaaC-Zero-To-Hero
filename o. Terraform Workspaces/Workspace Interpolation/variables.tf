variable "region" {
  default = "us-east-1"
}

variable "profile" {
  default = "default"
}

variable "instance_count" {
  description = "Number of instances to create"
  type = map(number)
  default = {
    "dev" = 1
    "stag" = 2
    "prod" = 3
  }
}

variable "ami" {
  description = "ami which is used to launch instances"
  type = map(string)
  default = {
    "dev" = "ami-0a5c3558529277641"
    "stag" = "ami-0a5c3558529277641"
    "prod" = "ami-0a5c3558529277641"
  }
}

variable "instance_type" {
  description = "Instance type"
  type = map(string)
  default = {
    "dev" = "t2.micro"
    "stag" = "t2.micro"
    "prod" = "t2.micro"
  }
}