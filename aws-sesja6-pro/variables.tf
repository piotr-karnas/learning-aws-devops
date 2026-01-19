variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type = string
  default = "10.6.0.0/16"
}

variable "public_subnet_cidr" {
  description = "Public subnet CIDR"
  type = string
  default = "10.6.1.0/24"
}

variable "environment" {
  description = "Dev/Staging/Prod"
  type = string
  default = "dev"
}
