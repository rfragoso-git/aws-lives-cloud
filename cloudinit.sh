#!/bin/bash
yum update -y
yum upgrade -y
yum install httpd -y
systemctl start httpd.service
systemctl enable httpd.service
yum install php php-mysql php-common -y
systemctl restart httpd.service
yum install -y aws-cli ruby wget
yum install -y mysql
wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install
chmod +x ./install
./install auto
service codedeploy-agent start
chmod 777 /etc/init.d/codedeploy-agent
wget http://pages.cloudtreinamentos.com/aws/arquivos/aplicacao.zip
unzip -o aplicacao.zip -d /var/www/html/
chmod -R 777 /var/www/html