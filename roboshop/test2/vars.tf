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