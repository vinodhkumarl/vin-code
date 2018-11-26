variable "public_management_key" {
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDGF+SpGhB5/yVdz8EnkLt7WeP3hgwgqrrNrz6Xmvw1PmcHMB8rGkYnPvVQxwhqYp5ryeiYowh9rdQTEYpz4Ww+NbT3wQ/LOKpvAjmQLBYUF97cQ4ds4zpVD4TjSAv428j2MTd9TJL5IBlP1Uu3rSndgdFpOIkRwbCAeQ8nM1KwCJi8QxgZC0At/DpWPqYckVQXEO+K8Z4z0TewlVrqoEpkJSAjgVMXn3f7QEogVuzgW8rEmoEm89g/R1DJVyW2Z0MqfG3kL30K6ayYaXDxK6R5s+m14CXJlm6YBDYhAQGifxQW3SdgEtbNOrN5X/wcb4BaQ7UVNXn7UOSM6sASlqHB scol@poc"
  description = "The public key used to encrypt the RDF administrator passwords."
}

variable "tags" {
  default = {
    owner       = "Vinodh"
    email       = "vinodhkumar.l@tcs.com"
    project     = "test"
    environment = "test"
    costcentre  = ""
    live        = "no"
  }

  description = "Map of tags to be assigned to the resources"
}

#variable "vpc_network" {
#  default     = "10.8.123.0/24"
#  description = "IP address allocation of the VPC for the environment"
#}

#variable "used_azs" {
#  default     = 2
#  description = "Number of availability zones to make use of"
#}

#variable "domain_name" {
#  default = "stbc2.jstest2.net bc.jsplc.net"
# default = ""
#}
#variable "domain_name_servers" {
#  default = ["10.145.26.2", "10.145.51.6"]
#   default = []
#}

#variable "attached_vpn_gateway" {
#  default = ""
#}

#variable "MULTI_AZ" {}

#variable "transit" {
#  default = {
#    aws_customer_gateway = "34.248.42.235,34.251.243.81"
#    bgp_asn              = "65401"
#    name                 = "transit"
#    attached_vpn_gateway = "transit"
#    CSR1                 = "169.254.49.64/30,169.254.49.72/30"
#    CSR2                 = "169.254.49.68/30,169.254.49.76/30"
#  }
#}

#variable "vpn" {
#  default = {
#    aws_customer_gateway = "34.248.42.235,34.251.243.81"
#    bgp_asn              = "65401"
#    name                 = "vpn"
#    attached_vpn_gateway = "transit"
#    CSR1                 = "169.254.49.64/30,169.254.49.72/30"
#    CSR2                 = "169.254.49.68/30,169.254.49.76/30"
#  }
#}

#variable "weblogic_private_ips" {
#  default = {
#    "0" = "10.8.123.4"
#    "1" = "10.8.123.20"
#  }
#}

variable "weblogic_instance_type" {
  default = "t2.micro"
}
