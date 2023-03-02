
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
  for_each = var.instances
  source = "./route53"
  priv_id = [module.ec2.priv_id]
  component = each.value["Name"]
  instance_type = each.value["type"]
  sg_id = module.sg.sg_id
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