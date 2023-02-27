resource "aws_instance" "ec2" {
  count                  = length(var.instances)
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-04f9cffce7d6ee23b"]
  tags = {
    Name =var.instances [count.index]
  }
}

variable "insances" {
        default = ["cart", "frontend", "mysql"]
}