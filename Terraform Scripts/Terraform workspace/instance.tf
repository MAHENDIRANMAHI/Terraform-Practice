#Create EC2 instance
resource "aws_instance" "My-ec2-vm" {
  ami           = var.ec2_ami_id
  instance_type = var.ec2_instznce_type
  count         = terraform.workspace == "default" ? 2 : 1
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
  vpc_security_group_ids = [aws_security_group.vpc2-ssh.id, aws_security_group.vpc2-web.id]
  tags = {
    "Name" = "vm-${terraform.workspace}-${count.index}"
    
  }
}