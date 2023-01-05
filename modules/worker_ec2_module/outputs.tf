output "ec2_arn" {
    value = aws_instance.worker_node.arn  
}

output "worker_node_pub_ip" {
    value = aws_instance.worker_node.public_ip
}