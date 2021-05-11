terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region = var.aws_region
  access_key = var.access_key
  secret_key = var.secret_key

}


data "aws_availability_zones" "available" {}
provider "http" {}

module "eks-cluster" {
  source = "/Users/shrikorlapati/Documents/TerraformEKS/module/eks-cluster"
  vpc_id = var.vpc_id
  subnet_id = var.subnet_id
  cluster-name = var.cluster-name

}

module "eks-worker-nodes" {
  source = "/Users/shrikorlapati/Documents/TerraformEKS/module/eks-worker-nodes"
  vpc_id = var.vpc_id
  subnet_id = var.subnet_id
  cluster-name = var.cluster-name
  aws_eks_cluster_demo_name = "${module.eks-cluster.aws_eks_cluster_demo_name}"
  aws_iam_role_demo-cluster_name = "${module.eks-cluster.aws_eks_cluster_demo_name}"
  aws_eks_cluster_demo_endpoint = "${module.eks-cluster.aws_eks_cluster_demo_endpoint}"
  config_map_aws_auth = "${module.eks-cluster.config_map_aws_auth}"

}



