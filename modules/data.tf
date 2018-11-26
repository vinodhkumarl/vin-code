# Availability zones
data "aws_availability_zones" "available" {}

# AMI Redhat 6.9
data "aws_ami" "rhel6_9" {
  most_recent = true

  filter {
    name   = "name"
    values = ["test"]
  }
}
#  filter {
#    name   = "virtualization-type"
#    values = ["hvm"]
#  }

#  filter {
#    name   = "block-device-mapping.volume-type"
#    values = ["gp2"]
#  }

#  owners = [""]
#}
