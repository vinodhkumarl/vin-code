module "environment" {
  public_management_key  = "${var.public_management_key}"

  source      = "../../modules/"
  tags        = "${var.tags}"
#  vpc_network = "${var.vpc_network}"

}
