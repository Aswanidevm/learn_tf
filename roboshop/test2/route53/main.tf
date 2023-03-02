
resource "aws_route53_record" "record"{
  zone_id     =   "Z04818282BOE8RVGV13K7"
  name        =   "${var.component}.myprojecdevops.info"
  type        =   "A"
  ttl         =   30
  records     =   var.priv_id
}


variable "component" {}
variable "instance_type" {}
variable "sg_id" {}
variable "priv_id" {}