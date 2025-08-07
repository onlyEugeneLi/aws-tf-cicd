# root module

module "vpc" {
  source = "./vpc"
  dev_cicd_vpc_cidr = "192.168.1.0/24"
  ssh_client_ip = "0.0.0.0/0" # Anyone who has secret access key can SSH connect to the instance 
  dev_cicd_vpc_public_subnet_cidr = "192.168.1.252/30"
}

module "ec2" {
  source = "./web"
  public_subnet = module.vpc.public_subnet # Module.module_name.output_name
  security_group = module.vpc.security_group
}