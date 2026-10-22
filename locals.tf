locals {
  common_tags = {
    projet = var.project
    environment = var.environment
    name = local.Name
  }
  common_name = "${var.project}-${var.environment}"
  Name = "${var.project}-${var.environment}"
  azs = slice(data.aws_availability_zones.available.names,0,2)

}