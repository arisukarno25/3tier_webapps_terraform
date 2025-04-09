module "security_group_alb" {
  source               = "../../modules/security-groups"

  name                 = "alb-sg"
  description          = "Allow HTTP for ALB"
  vpc_id               = module.vpc.vpc_id
  ingress_from_port    = 80
  ingress_to_port      = 80
  ingress_protocol     = "tcp"
  ingress_cidr_blocks  = ["0.0.0.0/0"]

  tags = {
    Name        = "alb-sg"
    Environment = "dev"
  }
}

module "alb" {
  source            = "../../modules/alb"
  lb_name           = "web-alb"
  tg_name           = "web-tg"
  vpc_id            = module.vpc.vpc_id
  subnet_ids        = module.vpc.public_subnet
  security_groups   = [module.security_group_alb.lb_sg]
  health_check_path = "/"
  tags = {
    Environment = "dev"
  }
}