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
  type    = list(string)
  default = ["t2.micro", "t2.medium", "t2.large"]
}
