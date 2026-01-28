terraform {
  backend "s3" {}  # PUSTY BLOCK - wszystko z CLI!
}
module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  vpc_name = "${var.environment}-vpc"
  public_subnet_cidr = var.public_subnet_cidr
  subnet_name = "${var.environment}-public-a"
  az = "eu-north-1a"
  igw_name = "${var.environment}-igw"
  rt_name = "${var.environment}-public-rt"
}
