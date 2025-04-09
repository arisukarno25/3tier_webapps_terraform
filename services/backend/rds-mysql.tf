module "rds-mysql" {
  source = "../../modules/rds-mysql-dev"

  db_instance_class = "db.t3.micro"
  db-identier       = "rdsmysqldev"
  engine            = "mysql"
  engine_version    = "8.0.40"
  database_name     = "webserverdb"
  db_username       = local.db_credentials.username
  db_password       = local.db_credentials.password
  db_storage        = 10
  subnet_ids        = "subnet-03e7e3371947a5903"
  final_snapshot    = true
  #   db_vpc_security_group = ["sg-065a096b938237714"]
}

data "aws_secretsmanager_secret_version" "db_password" {
  secret_id = "mysql/db_password"
}

locals {
  db_credentials = jsondecode(data.aws_secretsmanager_secret.db_password.secret_string)
}



