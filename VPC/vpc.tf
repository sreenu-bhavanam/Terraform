resource "aws_vpc" "demo_webvpc" {
  cidr_block           = "10.0.0.0/16"
  instance_tenancy     = "default"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    key   = "Name"
    value = "aws_vpc"
  }
}
// Creating internet gateway and attach to vpc//
resource "aws_internet_gateway" "web_igw" {
  vpc_id = aws_vpc.demo_webvpc.id
  tags = {
    Name  = "dev"
    value = "webigw"
  }
}
// create subnets //
resource "aws_subnet" "Publicsubnet1A" {
  cidr_block              = "10.0.0.0/24"
  vpc_id                  = aws_vpc.demo_webvpc.id
  map_public_ip_on_launch = true
  availability_zone       = "ap-south-1a"
  tags = {
    key   = "Name"
    value = "PublicSubnet1A"
  }
}
// private subnet //
resource "aws_subnet" "Privatesubnet1A" {
  cidr_block              = "10.0.1.0/24"
  vpc_id                  = aws_vpc.demo_webvpc.id
  map_public_ip_on_launch = false
  availability_zone       = "ap-south-1a"
  tags = {
    Key   = "Name"
    value = "Privatesubent1A"
  }
}
