
resource "aws_route53_record" "record"{
  zone_id     =   "Z04818282BOE8RVGV13K7"
  name        =   "${var.component}.myprojecdevops.info"
  type        =   "A"
  ttl         =   30
  records     =   [aws_instance.ec2.private_ip]
}


variable "component" {}
variable "instance_type" {}
variable "sg_id" {}