module "vpc" {
    source = "../modules/vpc_igw_module"
}

module "subnet" {
    source = "../modules/subnet_module"
    vpc_id  = module.vpc.vpc_id
}

module "route_table" {
    source = "../modules/Route_table_module"
    vpc_id = module.vpc.vpc_id
    igw_id = module.vpc.igw_id
    subnet_id = module.subnet.subnet_id
}

module "sec_group" {
    source = "../modules/sec_group_module"
    vpc_id = module.vpc.vpc_id  
}

module "master_ec2" {
    source = "../modules/master_ec2_module"
    instance_type = "t2.medium"
    subnet_id = module.subnet.subnet_id
    sec_group_id = module.sec_group.sec_group_id
}

module "worker_ec2" {
    source = "../modules/worker_ec2_module"
    subnet_id = module.subnet.subnet_id
    sec_group_id = module.sec_group.sec_group_id 
    depends_on = [
      module.master_ec2
    ]
}



