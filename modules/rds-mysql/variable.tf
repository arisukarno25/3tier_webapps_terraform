variable "db-identier" {
  type = string
}

variable "engine" {
  type = string
}

variable "engine_version" {
  type = string
}

variable "database_name" {
  type = string
}

variable "db_username" {
  type = string
}

variable "db_password" {
  type = string
}

variable "db_cluster_instance_class" {
  type = string
}

variable "db_storage" {
  type = number
}

variable "db_vpc_security_group" {
  type = list(string)
}

variable "subnet_ids" {
  type = list(string)
}
