terraform {
  # cloud {
  #   hostname     = "app.terraform.io"
  #   organization = "test12345ralala"
  #   workspaces {
  #     name = "bio-tfstate-tfcloud"
  #   }
  # }
  # backend "remote" {
  #   hostname     = "app.terraform.io"
  #   organization = "test12345ralala"
  #   workspaces {
  #     name = "bio-tfstate-tfcloud"
  #   }
  # }
  backend "s3" {
    bucket = "my-tf-test-bucket-sdfsdfsdgsd"
    key    = "state"
    region = "eu-west-1"
  }

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
