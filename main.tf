

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "vpc-ades"
  }
}

data "aws_ami" "jango" {
  most_recent = true

  filter {
    name   = "name"
    values = ["jango-base-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["587719168126"] # Canonical
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.jango.id
  instance_type = "t3.micro"
  key_name   = "apache"
  tags = {
    Name = "HelloWorld"
  }
}

