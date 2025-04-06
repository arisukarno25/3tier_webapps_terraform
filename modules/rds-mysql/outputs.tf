output "db-identier" {
  value = aws_rds_cluster.rds-mysql.cluster_identifier
}

output "endpoint" {
  value = aws_rds_cluster.rds-mysql.endpoint
}

output "address" {
  value = aws_rds_cluster.rds-mysql.address
}