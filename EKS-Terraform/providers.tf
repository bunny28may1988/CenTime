provider "aws" {
  access_key = "<Access_Key>"
  secret_key = "<SecretKey>"
  region = "us-east-1"
}

data "aws_region" "current" {
}

data "aws_availability_zones" "available" {
}

provider "http" {
}

