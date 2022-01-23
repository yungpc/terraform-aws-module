

#====================VPC outputs=============================
output "vpc_id" {
  value = aws_vpc.vpc_mod.id
}
#************************************************************


#====================Subnet outputs==========================
output "subnet_private_a" {
  value = aws_subnet.private_b.id
}


output "subnet_private_b" {
  value = aws_subnet.private_b.id
}


output "subnet_public_a" {
  value = aws_subnet.public_a.id
}


output "subnet_public_b" {
  value = aws_subnet.public_b.id
}

#************************************************************
