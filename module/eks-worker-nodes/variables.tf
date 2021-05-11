variable "aws_iam_role_demo-cluster_name" {
  type = string
}
variable "aws_eks_cluster_demo_name" {
  type = string
}
variable "vpc_id" {
   type = string  
}

variable "subnet_id" {
   type = string 
}

variable "cluster-name"{
  type = string 
}

variable "aws_eks_cluster_demo_endpoint" {
  type = string 
}

variable "config_map_aws_auth"{
  type = string 
}

variable "kubeconfig" {
  type = string
}