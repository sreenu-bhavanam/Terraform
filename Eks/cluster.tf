resource "aws_eks_cluster" "" {
  name = ""
  role_arn = ""
  vpc_config {
    subnet_ids = []
    module = source "..."
  }
}
resource "aws_eks_node_group" "" {
  cluster_name = ""
  node_group_name = ""
  node_role_arn = ""
  subnet_ids = []
  scaling_config {
    desired_size = 0
    max_size = 0
    min_size = 0
  }
}
resource "aws_eks_fargate_profile" "" {
  cluster_name = ""
  fargate_profile_name = ""
  pod_execution_role_arn = ""
  selector {
    namespace = ""
  }
}