provider "aws" {
  region  = "ap-south-1"
}

module "network-resources" {
  source = "./vpc"
  public_subnet_cidr_block  = "192.168.1.0/24"
  vpc_tags                  = "discusit"
  public_subnet_tags        = "public-subnet"
  igw_tags                  = "discusit-igw"
  route_cidr_block          = "0.0.0.0/0"
  public_route_tags         = "public-rt"
  vpc_cidr_block            = "192.168.0.0/16"
  private_route_tags        = "private-rt"
  private_subnet_cidr_block = "192.168.12.0/24"
  private_subnet_tags       = "private-subnet"
  vpc_id            = module.network-resources.vpc_id
}

module "ec2" {
  source = "./ec2"

  vpc_id            = module.network-resources.vpc_id
  public_subnet_id  = module.network-resources.public_subnet_id
}
