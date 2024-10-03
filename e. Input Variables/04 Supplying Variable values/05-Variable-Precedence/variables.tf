variable "filename" {
  description = "filename to be used for storing log"
  type        = string
  default = "./ec2.log"
}

variable "log_data" {
  description = "data content"
  type        = string
  default = "[Info]: Service started. Data through varibles.tf"
}