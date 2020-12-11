variable "instance_count" {
  description = "Number of instances to launch"
  type        = number
}

variable "ami" {
  description = "ID of AMI to use for the instance"
  type        = string 
}

variable "instance_type" {
  description = "The type of instance to start"
  type        = string
}

variable "region" {
    description = "AWS region to deploy to; defaults to us-east-1 (N. Virginia)"
    type        = string
}

variable "vpc_id" {
  description = "ID of the VPC where to create security group"
  type        = string
}

variable "subnet_id" {
  description = "VPC Subnet ID the instance is launched in."
  type        = string
}

variable "keyname" {
  description = "Deployer keyname"
  type        = string
}

variable "publickey" {
  description = "Public key of the deployer. Starts with ssh-rsa"
  type        = string
}

variable "sg1_ingress_cidr_blocks" {
  description = "Public key of the deployer. Starts with ssh-rsa"
  type        = list
}

variable "sg2_ingress_cidr_blocks" {
  description = "Public key of the deployer. Starts with ssh-rsa"
  type        = list
}

variable "sg1_egress_cidr_blocks" {
   description = "Public key of the deployer. Starts with ssh-rsa"
  type        = list
}
