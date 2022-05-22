

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "vpc-test"
  }
}





#data "aws_ami" "example" {
#  executable_users = ["self"]
#  most_recent      = true
#  owners           = ["self"]
#
#  filter {
#    name   = "tag:Name"
#    values = ["jango-base-*"]
#  }
#}
