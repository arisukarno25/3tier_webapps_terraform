resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr 
  enable_dns_hostnames = true
  enable_dns_support = true

  tags = {
    Name = "${var.name}-vpc"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "${var.name}-igw"
  }
}

resource "aws_subnet" "public" {
  count = length(var.public_subnet)
  vpc_id = aws_vpc.main.id
  cidr_block = var.public_subnet[count.index]
  availability_zone = var.availability_zone[count.index]

  tags = {
    Name = "${var.name}-subnet-public-${count.index}"
  }
}

resource "aws_subnet" "private" {
  count = length(var.private_subnet)
  vpc_id = aws_vpc.main.id
  cidr_block = var.private_subnet[count.index]
  availability_zone = var.availability_zone[count.index]

  tags = {
    Name = "${var.name}-subnet-private-${count.index}"
  }
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id = aws_subnet.public[0].id
  depends_on = [ aws_internet_gateway.igw ]

  tags = {
    Name = "${var.name}-nat"
  }
}

resource "aws_eip" "nat" {
  domain = "vpc"
}