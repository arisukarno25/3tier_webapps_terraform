variable "name" {
  description = "Name of the security group"
}

variable "description" {
  description = "Description of the security group"
  default     = "Security group for ALB"
}

variable "vpc_id" {
  description = "VPC ID"
}

variable "ingress_from_port" {
  default = 80
}

variable "ingress_to_port" {
  default = 80
}

variable "ingress_protocol" {
  default = "tcp"
}

variable "ingress_cidr_blocks" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "tags" {
  type    = map(string)
  default = {}
}
