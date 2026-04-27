resource "aws_eks_cluster" "demo-cluster" {
  name     = var.cluster-name
  role_arn = aws_iam_role.EKSClusterRole.arn
  vpc_config {
    subnet_ids              = [aws_subnet.subnet.id, aws_subnet.public-subnet2.id]
    security_group_ids      = [aws_security_group.sg-default.id]
    endpoint_public_access  = true
    endpoint_private_access = true
  }

  version = "1.36"

  depends_on = [
    aws_iam_role_policy_attachment.AmazonEKSClusterPolicy,
    aws_vpc.vpc
  ]
}
