variable "vpc_id" {
    type = string  
}

variable "subnet_cidr" {
    type = string
    default = "10.0.1.0/24"
}

variable "az" {
    type = string
    default = "ap-south-1a"  
}