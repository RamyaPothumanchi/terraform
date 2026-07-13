terraform {
  # Fixes the minimum required Terraform CLI version
  required_version = "~> 1.15.0"

  # Declares and locks provider versions
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.40.0" # Allows minor updates (e.g., 5.x) but blocks major updates (6.0)
    }
    
  }
}
