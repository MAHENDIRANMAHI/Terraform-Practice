#Define Output values

#Attribute refernce
output "ec2_instance_publicip" {
  description = "EC2 Instance Public IP"
  value       = aws_instance.My-ec2-vm.*.public_ip
}

output "ec2_publicdns" {
  description = "EC2 DNS"
  value       = aws_instance.My-ec2-vm.*.public_dns
}