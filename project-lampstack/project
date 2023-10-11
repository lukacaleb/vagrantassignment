#!/bin/bash

# Define variables
MASTER_IP="192.168.33.10"
SLAVE_IP="192.168.33.11"

# Step 1: Create Vagrant boxes for Master and Slave
vagrant init ubuntu/bionic64
vagrant box add ubuntu/bionic64
vagrant up

# Step 2: Set up SSH key-based authentication
ssh-keygen -t rsa -f ~/.ssh/id_rsa
ssh-copy-id altschool@$SLAVE_IP

# Step 3: Copy data from Master to Slave
scp -r /mnt/altschool/ altschool@$SLAVE_IP:/mnt/altschool/slave

# Step 4: Install Apache, MySQL, and PHP on both nodes
vagrant ssh master -c "sudo apt-get update"
vagrant ssh master -c "sudo apt-get install -y apache2 mysql-server php libapache2-mod-php"

vagrant ssh slave -c "sudo apt-get update"
vagrant ssh slave -c "sudo apt-get install -y apache2 mysql-server php libapache2-mod-php"

# Step 5: Configure Apache to start on boot
vagrant ssh master -c "sudo systemctl enable apache2"
vagrant ssh slave -c "sudo systemctl enable apache2"

# Step 6: Secure MySQL installation
vagrant ssh master -c "sudo mysql_secure_installation"
vagrant ssh slave -c "sudo mysql_secure_installation"

# Step 7: Create a test PHP page
echo "<?php phpinfo(); ?>" > /vagrant/www/info.php

# Step 8: Install Nginx on the Master node for load balancing
vagrant ssh master -c "sudo apt-get install -y nginx"
vagrant ssh master -c "sudo systemctl enable nginx"

# Step 9: Configure Nginx as a load balancer (nginx.conf)
echo 'worker_processes 4;

events {
    worker_connections 768;
}

http {
    upstream lamp_cluster {
        server 192.168.33.10;  # Master node
        server 192.168.33.11;  # Slave node
    }

    server {
        listen 80;

        location / {
            proxy_pass http://lamp_cluster;
        }
    }
}' > /etc/nginx/nginx.conf

# Step 10: Restart Nginx
vagrant ssh master -c "sudo systemctl restart nginx"

# Step 11: Display process overview
vagrant ssh master -c "top"

# Step 12: Done! Provide instructions to access the LAMP cluster
echo "LAMP cluster is deployed and load-balanced."
echo "You can access it at http://$MASTER_IP"



# Remember to replace "192.168.33.10" and "192.168.33.11" with the appropriate IP addresses for your Master and Slave nodes, and modify any other details as needed.

# This script covers the main steps of your project, but you may need to adapt it to your specific requirements and configurations. Be sure to read the accompanying documentation for detailed explanations of each step and how to execute the script. Also, consider further customization and security hardening depending on your specific use case.

