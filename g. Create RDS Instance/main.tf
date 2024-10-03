resource "aws_db_instance" "mydb" {
  identifier = "myfirstrdsintance"
  allocated_storage    = var.allocated_storage
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = var.username
  password             = var.password
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
  publicly_accessible = true
}