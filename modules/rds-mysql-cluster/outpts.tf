output "db-identier" {
  value = aws_rds_cluster.rds-mysql-cluster
}

output "endpoint" {
  value = aws_rds_cluster.rds-mysql-cluster.endpoint
}
