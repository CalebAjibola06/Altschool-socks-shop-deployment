output "cluster_name" {
  value = module.eks.cluster_name
}

output "vpc_id" {
  value = aws_vpc.main.id
}
