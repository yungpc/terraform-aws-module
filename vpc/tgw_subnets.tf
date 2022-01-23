#==============================TGW Subnets==============================
data "aws_availability_zones" "available" {
  state = "available"
}

resource "aws_subnet" "subnets" {
  for_each     = toset(data.aws_availability_zones.available.zone_ids)
  vpc_id =  aws_vpc.vpc_mod.id
  cidr_block = cidrsubnet(aws_vpc.vpc_mod.cidr_block, 12, index(sort(data.aws_availability_zones.available.zone_ids), each.value))
 
  availability_zone_id = each.value
  tags = {
    Name = "tgw-subnet-${trimprefix(each.value, "use1-")}"
  }
}
#************************************************************************
