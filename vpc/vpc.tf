
#==============================VPC Module===============================
resource "aws_vpc" "vpc_mod" {
  cidr_block = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = var.vpc_name
  }
}

#***********************************************************************












 #cidr_block = cidrsubnet(aws_vpc.vpc10-100.cidr_block, 12, trimprefix("${each.value}", "use1-az") - 1)

/*
variable "az_zones" {
    type = list(string)
    default = data.aws_availability_zones.available[*]
    #default = ["use1-az1", "use1-az2", "use1-az3", "use1-az4", "use1-az5", "use1-az6"] 
}
*/



/*
variable "subnet_tgw" {
  type = map(object({
    cidr = string
    zone_id = string
  }))
    default = {
      "az1" = {
        cidr = cidrsubnet(aws_vpc.vpc10-101.cidr_block, 8, 1)
        zone_id = "use1-az1"
        }

      "az2" = {
        cidr = cidrsubnet(aws_vpc.vpc10-101.cidr_block, 8, 16)
        zone_id = "use1-az2"
        }
  }
}

resource "aws_subnet" "main" {
  for_each     = var.subnet_tgw
  cidr_block = each.value["cidr"]
  availability_zone_id = each.value["zone_id"]

}
*/