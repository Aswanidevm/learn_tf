resource "aws_instance" "ec2" {

}

variable "instances"
{
  default =
  {
    catalogue=
    {
      Name = "catalogue"
      type = "t3.micro"
    } catalogue=
  {
    Name = "catalogue"
    type = "t3.micro"
  }
  }
}

