resource "aws_instance" "myvm" {
  ami               = "ami-0ab4d1e9cf9a1215a"
  instance_type     = "t2.micro"
  #availability_zone = "us-east-1a"
  availability_zone = "us-east-1b"
  tags = {
    "Name" = "web"
  }
     lifecycle {
      create_before_destroy = true
}
}