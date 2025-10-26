terraform {
  required_version = ">= 1.13.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.18.0"
    }
  }

  backend "s3" {
    encrypt      = true
    use_lockfile = true
    bucket       = ""
    key          = ""
    region       = ""
  }
}

provider "aws" {
  region = "eu-central-1"

  default_tags {
    tags = {
      Environment = "dev"
      ManagedBy   = "adam.domagala@email.com"
      Owner       = "adam.domagala@email.com"
      CostCenter  = "12345"
      Project     = "OrgNetwork"
    }
  }
}
