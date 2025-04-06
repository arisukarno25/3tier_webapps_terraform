resource "aws_rds_cluster" "rds-mysql" {
  cluster_identifier        = var.db-identier
  engine                    = var.engine
  engine_version            = var.engine_version
  database_name             = var.database_name
  master_username           = var.db_username
  master_password           = var.db_password
  db_cluster_instance_class = var.db_cluster_instance_class
  allocated_storage         = var.db_storage
  #   vpc_security_group_ids = var.db_vpc_security_group
}

resource "aws_db_subnet_group" "rds-mysql" {
  name       = "${var.db-identier}-subnet-group"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "${var.db-identier}-subnet-group"
  }
}