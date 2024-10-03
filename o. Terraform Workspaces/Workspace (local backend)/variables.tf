variable "region" {
  default = "us-east-1"
}

variable "profile" {
  default = "default"
}

variable "instance_count" {
  description = "Number of instances to create"
  type        = number
}

variable "ami" {
  description = "ami which is used to launch instances"
  type        = string
}

variable "instance_type" {
  description = "Instance type"
  type        = string
}