terraform {
  required_version = "1.7.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.41.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
  profile = "terraform"
  
  default_tags {
    tags = {
      "Version"   = "v0.1"
      "CreatedAt" = "16/03/2024"
    }
  }
}