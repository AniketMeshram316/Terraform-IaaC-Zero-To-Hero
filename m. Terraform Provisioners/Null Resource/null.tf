resource "null_resource" "print_ip" {
  count = length(aws_instance.web)

  provisioner "local-exec" {
    command = "echo ${element(aws_instance.web[*].public_ip, count.index)} >> ./hosts"
  }
}