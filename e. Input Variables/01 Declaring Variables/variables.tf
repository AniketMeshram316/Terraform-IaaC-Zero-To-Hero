variable "region" {
  description = "This is your AWS region"
  default     = "us-east-1"
  type        = string
}

variable "aws_profile" {
  description = "This is the AWS CLI profile"
  default     = "default"
  type        = string
}

variable "ami" {
  description = "This is the image id use for the server"
  default     = "ami-0a5c3558529277641"
  type        = string
  sensitive   = false
}

variable "instance_type" {
  default = "t2.micro"
}