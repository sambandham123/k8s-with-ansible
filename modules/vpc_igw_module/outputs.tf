output "vpc_id" {
    value = aws_vpc.k8s_vpc.id
}

output "igw_id" {
    value = aws_internet_gateway.ks8_igw.id
}