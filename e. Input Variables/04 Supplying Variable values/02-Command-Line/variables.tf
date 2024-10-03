variable "filename" {
  description = "filename to be used for storing log"
  default = "./ec2.log"
  type = string
}

variable "log_data" {
  description = "data content"
  default = "[Info]: Service Started. Data through variables"
  type = string
}