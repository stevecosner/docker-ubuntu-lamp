# docker-ubuntu-lamp
# Create a Docker Ubuntu container with LAMP stack and test web, php and mysql connections.

# Clone repo and build container.
docker build -t ubuntu-docker-lamp-1 .

# Run your first container.
docker run -itd ubuntu-docker-lamp-1

# Attach to container.  In this cast gifted_rhodes is the container name.
docker attach gifted_rhodes

# Start apache and my sql

service apache2 start
service mysql start

# Update database with user1 and pass1
mysql

CREATE USER 'user1'@'localhost' IDENTIFIED BY 'pass1';

GRANT ALL PRIVILEGES ON *.* TO 'user1'@'localhost';

# Open browser to 172.17.0.2 or whatever docker container address is.
# If container address is different than above IP, PHP and MySQL links will not work.  You will have to manually add info.php and  
my.php to your IP Address.
