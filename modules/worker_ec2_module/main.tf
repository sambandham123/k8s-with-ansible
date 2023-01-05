### Creating EC2 ####

resource "aws_instance" "worker_node" {
    ami = data.aws_ami.ubuntu.id
    subnet_id = var.subnet_id
    availability_zone = var.az
    instance_type = var.instance_type
    vpc_security_group_ids = [var.sec_group_id]
    key_name = var.key_name

    provisioner "remote-exec" {
        inline = [
          "echo 'Wait Until SSH is ready'"
        ]
        connection {
          type = "ssh"
          user = "ubuntu"
          private_key = file(var.key_path)
          host = aws_instance.worker_node.public_ip
        }
    }

    provisioner "local-exec" {
        command = "ansible-playbook -i ${aws_instance.worker_node.public_ip}, --private-key ${var.key_path} ../ansible_files/worker_plane.yaml -vv"  
    }
}