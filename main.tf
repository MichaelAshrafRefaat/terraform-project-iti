module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
}

module "subnets" {
  source = "./modules/subnets"
  vpc_id = module.vpc.vpc_id
  igw_id = module.vpc.igw_id
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  azs = var.azs
  nat_gateway_id    = module.subnets.nat_gateway_id
  private_subnet_ids = module.subnets.private_subnet_ids
  public_subnet_ids = module.subnets.public_subnet_ids
}
module "instances" {
  source = "./modules/instances"
  public_subnets = module.subnets.public_subnet_ids
  private_subnets = module.subnets.private_subnet_ids
 public_sg       = module.security-group.public_sg_id
  private_sg      = module.security-group.private_sg_id
  alb_dns_name = module.load-balancers.alb_dns_name
  
}

module "load-balancers" {
  source = "./modules/load-balancers"
  vpc_id = module.vpc.vpc_id
  public_subnets = module.subnets.public_subnet_ids
  private_subnets = module.subnets.private_subnet_ids
  public_instance_ids = module.instances.public_instance_ids
  private_instance_ids = module.instances.private_instance_ids
  alb_sg      = module.security-group.alb_sg_id 
}
module "security-group" {
  source = "./modules/security-group"
   vpc_id      = module.vpc.vpc_id


}
module "s3" {
  source             = "./modules/database/s3"
  
}
module "dynamodb" {
  source             = "./modules/database/dynamodb"
  
}