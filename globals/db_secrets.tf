variable "db_password" {
  type      = string
  sensitive = true
}

resource "aws_secretsmanager_secret" "db_password" {
  name = "mysql/db_password"
}

resource "aws_secretsmanager_secret_version" "db_password_value" {
  secret_id = aws_secretsmanager_secret.db_password.id 
  secret_string = jsonencode({
    username = "admin"
    password = var.db_password
  })
}