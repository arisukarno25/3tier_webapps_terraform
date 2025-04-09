module "ec2" {
  source = "../../modules/ec2"

  ami_id                      = "ami-0beef7b02ac84c4f4"
  instance_type               = "t2.micro"
  key_name                    = "freetier"
  subnet_id                   = "subnet-03e7e3371947a5903"
  security_group_ids          = ["sg-0293a312718bd6b31"]
  associate_public_ip_address = true
  instance_name               = "webserver-dev"
}