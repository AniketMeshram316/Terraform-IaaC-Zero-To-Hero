locals {
    instance_type = "t2.micro"
}

output "instance_type" {
  value = local.instance_type
}