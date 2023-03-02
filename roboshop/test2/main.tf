
module "ec2" {
  for_each = var.instances
  source = "./ec2"
  component = each.value["Name"]
  instance_type = each.value["type"]
  sg_id = module.sg.sg_id
}

module "sg" {
  source = "./sg"
}

module "route53" {
  source = "./route53"
  pub_id = module.ec2.priv_id
}


variable "instances"{
  default     =  {
    catalogue =  {
      Name    = "catalogue"
      type    = "t3.micro"
    }
    frontend  =   {
      Name    = "frondend"
      type    = "t3.micro"
    }
  }
}