terraform {
  required_providers {
    aws = {
      version = "4.53.0"
      source  = "hashicorp/aws"
    }
  }
  required_version = ">= 1.3.0"
}
