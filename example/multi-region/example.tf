provider "aws" {
  region = "eu-west-1"
}

module "vpc-peering" {
  source           = "./../.."
  name             = "vpc-peering"
  environment      = "prod"
  label_order      = ["environment", "name"]
  requestor_vpc_id = "vpc-xxxxxxxxxxxxxx"
  acceptor_vpc_id  = "vpc-xxxxxxxxxxxxxx"
  accept_region    = "us-west-2"
  auto_accept      = false
}

