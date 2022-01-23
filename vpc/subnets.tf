#=============================Private Subnet A============================
resource "aws_subnet" "private_a" {
  vpc_id     = aws_vpc.vpc_mod.id
  cidr_block = var.subnet_private_a
  availability_zone_id  = data.aws_availability_zones.available.zone_ids[0]

  tags = {
    Name = "Private Subnet A"
  }
}
#*************************************************************************


#=============================Private Subnet B============================
resource "aws_subnet" "private_b" {
  vpc_id     = aws_vpc.vpc_mod.id
  cidr_block = var.subnet_private_b
  availability_zone_id  = data.aws_availability_zones.available.zone_ids[1]

  tags = {
    Name = "Private Subnet B"
  }
}
#*************************************************************************


#==============================Public Subnet A============================
resource "aws_subnet" "public_a" {
  vpc_id     = aws_vpc.vpc_mod.id
  cidr_block = var.subnet_public_a
  availability_zone_id  = data.aws_availability_zones.available.zone_ids[0]

  tags = {
    Name = "Public Subnet A"
  }
}
#*************************************************************************


#==============================Public Subnet B============================
resource "aws_subnet" "public_b" {
  vpc_id     = aws_vpc.vpc_mod.id
  cidr_block = var.subnet_public_b
  availability_zone_id  = data.aws_availability_zones.available.zone_ids[1]

  tags = {
    Name = "Public Subnet B"
  }
}
#*************************************************************************
