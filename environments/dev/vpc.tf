module "vpc" {
  source = "../../modules/vpc-prod"
  name   = "demo"

  vpc_cidr          = "10.0.0.0/16"
  public_subnet     = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet    = ["10.0.3.0/24", "10.0.4.0/24"]
  availability_zone = ["ap-southeast-2a", "ap-southeast-2b"]
}