#  terraform {
#   backend "remote" {
#    hostname     = "terraform.petc.com"
#     organization = "Infrastructure"

#    workspaces {
#       name = ""
#    }
#       }
# }

module "ec2" {
  source = "./shared_modules/"
  instance_count              = var.instance_count
  instance_type               = var.instance_type
  region                      = var.region
  vpc_id                      = var.vpc_id
  subnet_id                   = var.subnet_id
  keyname                     = var.keyname
  publickey                   = var.publickey
  sg1_ingress_cidr_blocks     = var.sg1_ingress_cidr_blocks
  sg2_ingress_cidr_blocks     = var.sg2_ingress_cidr_blocks
  sg1_egress_cidr_blocks      = var.sg1_egress_cidr_blocks

  
}



