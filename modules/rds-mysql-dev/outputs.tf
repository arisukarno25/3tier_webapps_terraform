output "db-identier" {
  value = aws_db_instance.rds-mysql-single.identifier
}

output "endpoint" {
  value = aws_db_instance.rds-mysql-single.endpoint
}
