# 1. Create the VPC
resource "aws_vpc" "nnn_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "my-vpc"
  }
}

# 2. Create subnets
resource "aws_subnet" "subnet_1" {
  vpc_id                  = aws_vpc.nnn_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-west-2a"
  map_public_ip_on_launch = false

  tags = {
    Name = "subnet-1"
  }
}

resource "aws_subnet" "subnet_2" {
  vpc_id                  = aws_vpc.nnn_vpc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "us-west-2b"
  map_public_ip_on_launch = false

  tags = {
    Name = "subnet-2"
  }
}
resource "aws_subnet" "subnet_3" {
  vpc_id                  = aws_vpc.nnn_vpc.id
  cidr_block              = "10.0.3.0/24"
  availability_zone       = "us-west-2c"
  map_public_ip_on_launch = false

  tags = {
    Name = "subnet-3"
  }
}
resource "aws_subnet" "subnet_4" {
  vpc_id                  = aws_vpc.nnn_vpc.id
  cidr_block              = "10.0.4.0/24"
  availability_zone       = "us-west-2d"
  map_public_ip_on_launch = false

  tags = {
    Name = "subnet-4"
  }
}
