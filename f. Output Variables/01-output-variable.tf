variable "region" {
  description = "Region where the resources will be provisioned"
  default = "us-east-1"
}

output "region" {
  value = var.region
}