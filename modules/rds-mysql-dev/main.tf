resource "aws_db_instance" "rds-mysql-single" {
  instance_class    = var.db_instance_class
  allocated_storage = var.db_storage
  db_name           = var.db-identier
  engine            = var.engine
  engine_version    = var.engine_version
  username          = var.db_username
  password          = var.db_password
  # parameter_group_name = "default.mysql8.0"
  skip_final_snapshot = var.final_snapshot
}

