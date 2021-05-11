variable "cluster-name" {
  default = "terraform-eks-demo"
  type    = string
}

variable "vpc_id" {
  default = "vpc-76e6c50e"
}

variable "subnet_id" {
  default = ["subnet-662a261c", "subnet-db8afe97", "subnet-b5b167de"] 
}


