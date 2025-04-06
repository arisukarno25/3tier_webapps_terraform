variable "db-identier" {
  type = string
}

variable "engine" {
  type = string
}

variable "engine_version" {
  type = string
}

variable "database" {
  type = string
}

variable "dbusername" {
  type = string
}

variable "dbpassword" {
  type = string
}

variable "db_cluster_instance_class" {
  type = string
}

variable "db_storage" {
  type = string
}

variable "db_vpc_security_group" {
  type = list(string)
}

variable "subnet_ids" {
  type = list(string)
}