module "ec2" {
  for_each = var.instances
  source = "./main"
  component =each.value["Name"]
  instance_type    = each.value["type"]
}

variable "instances"{
  default =  {
    catalogue=  {
      Name = "catalogue"
      type = "t3.micro"
    }
    frontend=   {
      Name = "frondend"
      type = "t3.micro"
    }
  }
}