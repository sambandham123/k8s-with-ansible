output "ec2_arn" {
    value = aws_instance.master_node.arn  
}

output "master_node_pub_ip" {
    value = aws_instance.master_node.public_ip
}