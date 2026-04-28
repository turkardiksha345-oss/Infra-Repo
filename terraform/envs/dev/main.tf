module "eks" {
  source = "../../modules/eks"

  cluster_name = "my-eks-cluster"
}