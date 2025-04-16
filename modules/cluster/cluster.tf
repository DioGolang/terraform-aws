resource "aws_eks_cluster" "eks_cluster" {
  name     = "${var.project_name}-eks-cluster"
  role_arn = "arn:aws:iam::329708495434:role/LabRole"
  version  = "1.31"

  access_config {
    authentication_mode = "API"
  }

  vpc_config {
    subnet_ids = [
      var.public_subnet_1a,
      var.public_subnet_1b,
    ]
    endpoint_private_access = true
    endpoint_public_access  = true
  }

  # como não tenho permissão de conta para criar um role, e devo usar o LabRole,
  # depends_on = [
  #   aws_iam_policy_attachment.eks_cluster_role_attachment
  # ]

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-eks-cluster"
    }
  )

}