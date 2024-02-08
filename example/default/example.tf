provider "aws" {
  region = "us-west-2"
}


locals {
  name        = "peering"
  environment = "test"
}

module "vpc-peering" {
  source = "./../../"

  name             = local.name
  environment      = local.environment
  requestor_vpc_id = "vpc-xxxxxxxxxxxxxxxxx"
  acceptor_vpc_id  = "vpc-xxxxxxxxxxxxxxxxx"
}
