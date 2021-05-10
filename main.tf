terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region = var.aws_region
  access_key = var.access_key
  secret_key = var.secret_key

}
variable "vpc_id" {}
data "aws_default_vpc" "vpc_id" {}


data "aws_availability_zones" "available" {}
provider "http" {}
