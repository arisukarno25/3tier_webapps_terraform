variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "key_name" {
  type = string
}

variable "subnet_id" {
  type    = string
}

variable "security_group_ids" {
  type = list(string)
}

variable "associate_public_ip_address" {
  type = bool
}

variable "user_data" {
  type    = string
  default = ""
}

variable "instance_name" {
  type = string
}
