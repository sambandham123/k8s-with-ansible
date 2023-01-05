variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "subnet_id" {
    type = string 
}

variable "az" {
    type = string
    default = "ap-south-1a"
}

variable "key_name" {
    type = string
    default = "new_account"
}

variable "key_path" {
    type = string
    default = "./new_account.pem"
}

variable "sec_group_id" {
    type = string
}

