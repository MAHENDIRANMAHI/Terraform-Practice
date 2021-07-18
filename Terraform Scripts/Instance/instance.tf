resource "aws_instance" "myvm" {
  ami           = "ami-0ab4d1e9cf9a1215a"
  instance_type = "t3.micro"
  #availability_zone = "us-east-l"
  count = 5
  tags = {
    "Name" = "myvm"
    "Name" = "web-${count.index}"
  }
}   