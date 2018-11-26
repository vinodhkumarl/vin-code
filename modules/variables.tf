variable "public_management_key" {
  description = "The public key used to encrypt the administrator passwords."
}

variable "tags" {
  type        = "map"
  description = "Map of tags to be assigned to the resources"
}

variable "weblogic_instance_type" {
  description = "Size of weblogic instances"
  default     = "t2.micro"
}
