resource "aws_instance" "ec2" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = [sg-04f9cffce7d6ee23b]
  tags{
    name = "sample"
  }
}