variable "aws_region" {
  default = "us-west-2"
}

variable "access_key" {
   default = ""
}

variable "secret_key" {
  default = ""
}
#
# Outputs
#

variable "cluster-name" {
  default = "test"
}

variable "vpc_id" {
  default = "vpc-ff59a082"
}

variable "subnet_id" {
  default = [ "subnet-3617ba50" , "subnet-037bd022" , "subnet-17680e19"]
}



