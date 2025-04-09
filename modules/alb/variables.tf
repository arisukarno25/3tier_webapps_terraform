variable "lb_name" {}
variable "tg_name" {}
variable "vpc_id" {}
variable "subnet_ids" {
  type = list(string)
}
variable "security_groups" {
  type = list(string)
}
variable "target_port" {
  default = 80
}
variable "target_protocol" {
  default = "HTTP"
}
variable "listener_port" {
  default = 80
}
variable "health_check_path" {
  default = "/"
}
variable "tags" {
  type    = map(string)
  default = {}
}
