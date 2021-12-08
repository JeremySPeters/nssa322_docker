#/bin/bash
#@author: Jeremy Peters

#firewall
sudo firewall-cmd --zone=public --permanent --add-port=8080/tcp
sudo firewall-cmd --zone=public --permanent --add-port=8181/tcp
sudo systemctl restart firewalld

#docker
sudo yum install docker -y
sudo systemctl enable docker
sudo systemctl restart docker

#docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

#part2
sudo chmod +x build.sh
mkdir /home/student/wordpress
mv docker-compose.yml /home/student/wordpress
mv build.sh /home/student/wordpress

sudo shutdown -r 0
