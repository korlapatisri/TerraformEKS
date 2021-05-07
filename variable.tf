

variable "aws_region" {
  default = "us-west-2"
}

variable "access_key" {
   default = ""
}

variable "secret_key" {
  default = ""
}


//dev env
variable "cluster-name" {
  default = "terraform-eks-demo"
  type    = string
}

variable "vpc_id" {
  type        = string
  default     = "vpc-76e6c50e"
  description = "description"
}

variable "subnet_id" {
  default     =  ["subnet-f7932f8f", "subnet-1fa0a734", "subnet-ec9940a6", "subnet-d4149b89" ]
  description = "description"
}
