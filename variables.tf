variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
}

variable "public_subnet_cidr_block" {
  description = "The CIDR block for the subnet"
}

variable "vpc_tags" {
  description = "Tags for the VPC"
  type        = string
}

variable "public_subnet_tags" {
  description = "Tags for the subnet"
}

variable "igw_tags" {
  description = "Tags for the internet gateway"
}

variable "route_cidr_block" {
  description = "The CIDR block for the route"
}

variable "public_route_tags" {
  description = "Tags for the route table"
}

variable "private_subnet_cidr_block" {
  description = "The CIDR block for the private subnet"
}

variable "private_subnet_tags" {
  description = "Tags for the private subnet"
}

variable "private_route_tags" {
  description = "Tags for the private route table"
}
