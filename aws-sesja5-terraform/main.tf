resource "aws_vpc" "sesja5_vpc" {
  cidr_block = "10.5.0.0/16"
  tags = {
    Name = "sesja5-terraform-vpc"
  }
}

resource "aws_subnet" "public_a" {
  vpc_id            = aws_vpc.sesja5_vpc.id
  cidr_block        = "10.5.1.0/24"
  availability_zone = "eu-north-1a"
  tags = {
    Name = "sesja5-public-a"
  }
}

resource "aws_internet_gateway" "sesja5_igw" {
  vpc_id = aws_vpc.sesja5_vpc.id
  tags = {
    Name = "sesja5-igw"
  }
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.sesja5_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.sesja5_igw.id
  }
}

resource "aws_route_table_association" "public_a" {
  subnet_id      = aws_subnet.public_a.id
  route_table_id = aws_route_table.public.id
}
