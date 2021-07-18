
#!/bin/bash
    sudo yum update -y 
    sudo yum install httpd -y
    sudo systemctl enable httpd
    sudo systemctl start httpd
    echo "<html><body><div>Welcome to StackSimplify ! AWS infra Created using Terraform</div></body></html>" |sudo tee /var/www/html/index.html