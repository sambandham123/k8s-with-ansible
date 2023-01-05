resource "aws_vpc" "k8s_vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "k8s-VPC"
  }
}

resource "aws_internet_gateway" "ks8_igw" {
  vpc_id = aws_vpc.k8s_vpc.id

  tags = {
    Name = "k8s-IGW"
  }
}