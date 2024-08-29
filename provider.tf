terraform {
  required_version = ">=1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.57.0"
    }
  }

}
provider "aws" {
  region = "eu-west-1"

  default_tags {
    tags = {
      Terraform = "true"
      Env       = "test"
      Owner     = "Sylvain T"
    }
  }
}
