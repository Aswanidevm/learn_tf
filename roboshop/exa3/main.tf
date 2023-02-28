resource "aws_instance" "ec2" {
  for_each = var.instances
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = each.value[var.instances "type"]
  vpc_security_group_ids = ["sg-04f9cffce7d6ee23b"]
  tags = {
    Name =each.value[var.instances "Name"]
}

variable "instances"
{
  default =
  {
    catalogue=
    {
      Name = "catalogue"
      type = "t3.micro"
    }
    frontend=
    {
      Name = "frondend"
      type = "t3.micro"
    }
  }
}

