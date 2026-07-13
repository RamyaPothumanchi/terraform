provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.78.0" # Archaic version

  name = "legacy-vpc"
  cidr = "10.0.0.0/16"

  # Obsolete parameters or old variable interpolation types
  enable_vpn_gateway = "${var.legacy_boolean_string}" 
}
