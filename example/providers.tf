terraform {
  required_version = "1.1.7"
  backend "local" {}

  # Don't actually use a remote state.
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.11.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}