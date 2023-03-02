
resource "aws_route53_record" "record"{
  zone_id     =   "Z04818282BOE8RVGV13K7"
  name        =   "${var.component}.myprojecdevops.info"
  type        =   "A"
  ttl         =   30
  records     = [var.private_ip]
}

variable "private_ip" {}

variable "component" {}
