# resource "aws_iam_role" "eks_cluster_role" {
#   name = "${var.project_name}_role"
#
#   assume_role_policy = jsonencode({
#     Version = "2012-10-17"
#     Statement = [
#       {
#         Action = "sts:AssumeRole"
#         Effect = "Allow"
#         Sid    = ""
#         Principal = {
#           Service = "eks.amazonaws.com"
#         }
#       },
#     ]
#   })
#
#   tags = merge(
#     var.tags,
#     {
#       Name = "${var.project_name}-cluster-role"
#     }
#   )
# }

# como estou no não tem permissão de conta para criar um role, e devo usar o LabRole,
# e nem de attach o aws_iam_policy_attachment ao LabRole. acredito que essa LabRole já tenha o aws_iam_policy_attachment


# resource "aws_iam_policy_attachment" "eks_cluster_role_attachment" {
#   name       = "test-attachment"
#   users      = [aws_iam_user.user.name]
#   roles      = [aws_iam_role.role.name]
#   groups     = [aws_iam_group.group.name]
#   policy_arn = aws_iam_policy.policy.arn
# }

# resource "aws_iam_policy_attachment" "eks_cluster_role_attachment" {
#   name       = "LabRole"
#   policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
#   roles      = ["LabRole"]
# }