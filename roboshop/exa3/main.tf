resource "aws_instance" "ec2"{
  for_each               = var.instances
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = each.value["type"]
  vpc_security_group_ids = ["sg-04f9cffce7d6ee23b"]
  tags                   =  {
    Name = each.value["Name"]
  }
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
resource "aws_route53_record" "record"{
  for_each = var.instances
  zone_id = "Z04818282BOE8RVGV13K7"
  name    = "${each.value["Name"]}.myprojecdevops.info"
  type    = "A"
  ttl     = 30
  records = [for k, v in aws_instance.ec2 : "${k}-${v.public_ip}"]
}

output "ec2" {
  value = [for k, v in aws_instance.ec2 : "${k} - ${v.public_ip}"]
}