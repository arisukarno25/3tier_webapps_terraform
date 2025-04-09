module "web_asg" {
  source = "../../modules/asg-webserver"

  name              = "web-app"
  ami_id            = "ami-0beef7b02ac84c4f4"
  instance_type     = "t3.micro"
  key_name          = "freetier"
  security_groups   = ["sg-06d804cb255fd1ec8"]
  subnet_ids        = ["subnet-0f7e87d777b30bbf8", "subnet-0719abcb72b37f015"]

  desired_capacity  = 0
  min_size          = 0
  max_size          = 0

#   user_data         = filebase64("${path.module}/user_data.sh")
  target_group_arns = [module.alb.target_group_arn]

  depends_on = [ module.alb.id ]

  tags = {
    Environment = "dev"
    Team        = "web"
  }
}




