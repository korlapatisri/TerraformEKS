module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "v1.44.0"

  name = "${var.name}"

  cidr = "${var.cidr}"

  public_subnets = "${var.public_subnets}"
}

#
# VPC Resources
#  * VPC
#  * Subnets
#  * Internet Gateway
#  * Route Table
#

# resource "aws_vpc" "demo" {
#   cidr_block = "10.0.0.0/16"

#   tags = map(
#     "Name", "terraform-eks-demo-node",
#     "kubernetes.io/cluster/${var.cluster-name}", "shared",
#   )
# }


# resource "aws_internet_gateway" "demo" {
#   vpc_id = var.vpc_id

#   tags = {
#     Name = "terraform-eks-demo"
#   }
# }

# resource "aws_route_table" "demo" {
#   vpc_id = vpc_id

#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.demo.id
#   }
# }

# resource "aws_route_table_association" "demo" {
#   count = 2

#   subnet_id      = aws_subnet.demo.*.id[count.index]
#   route_table_id = aws_route_table.demo.id
# }
