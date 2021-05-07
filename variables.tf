variable "aws_region" {
  default = "us-west-2"
}

variable "access_key" {
   default = ""
}

variable "secret_key" {
  default = ""
}

variable "cluster-name" {
  default = "terraform-eks-demo"
  type    = string
}
