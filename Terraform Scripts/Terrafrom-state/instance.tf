#Create EC2 instance
resource "aws_instance" "Myec1" {
  ami           = var.ec2_ami_id
  instance_type = var.ec2_instznce_type
  #count         = var.ec2_instance_count
  key_name  = "terraform.key"
  user_data = file("apache-install.sh")
  /*
    user data = <<-EOF
    #!/bin/bash
    sudo yum update -y 
    sudo yum install httpd -y
    sudo systemctl enable httpd
    sudo systemctl start httpd
    echo "<htnl><body><div>Welcome to StackSimplify ! AWS infra Created using Terraform</div></body></html>" > /var/www/html/index.html
    EOF
    */
  vpc_security_group_ids = [aws_security_group.vpc1-ssh.id, aws_security_group.vpc1-web.id]
  tags = {
    "Name" = "Terraform-State"
    "Build-Date" = "7-8-2021"
  }
}