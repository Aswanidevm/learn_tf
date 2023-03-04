variable "instances"{
  default     =  {
    catalogue =  {
      Name    = "catalogue"
      type    = "t3.micro"
    }
    frontend  =   {
      Name    = "frontend"
      type    = "t3.micro"
    }
    user =  {
      Name    = "user"
      type    = "t3.micro"
    }
    mysql  =   {
      Name    = "mysql"
      type    = "t3.micro"
    }
    mongodb =  {
      Name    = "mongodb"
      type    = "t3.micro"
    }
    redis  =   {
      Name    = "redis"
      type    = "t3.micro"
    }
    cart =  {
      Name    = "cart"
      type    = "t3.micro"
    }
    shipping  =   {
      Name    = "shipping"
      type    = "t3.micro"
    }
    payment =  {
      Name    = "payment"
      type    = "t3.micro"
    }
    rabbitmq  =   {
      Name    = "rabbitmq"
      type    = "t3.micro"
    }
  }
}