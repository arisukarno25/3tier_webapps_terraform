variable "name" {
    type = string
}

variable "ami_id" {
    type = string
}

variable "instance_type" {
    type = string
}

variable "key_name" {
    type = string
}

variable "security_groups" { 
    type = list(string) 
}

variable "subnet_ids" { 
    type = list(string) 
}

variable "desired_capacity" { 
    default = 2 
}

variable "min_size" { 
    default = 1 
}

variable "max_size" { 
    default = 3 
}

variable "user_data" { 
    default = "" 
}

variable "target_group_arns" {
  type    = list(string)
  default = []
}

variable "tags" {
  type    = map(string)
  default = {}
}
